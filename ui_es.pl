/*
    Sistema Experto (User interface module):
        user_interface_expert_system.pl
    Creado:
        May 21, 2018 13:35:59
    Descripción:
        Trata los síntomas como una lista. La cabeza es el diagnóstico y la cola son los síntomas.
        Utiliza assert/1 para cambiar dinámicamente la base de conocimiento.
        Determina la verdad y falsedad de los síntomas conocidos.
        Puede contestar a las preguntas 'por qué' e incluye capacidad de explicación.
        Elimina dinámicamente las aseveraciones agregadas después de cada consulta.
    Nota:
        El ES puede funcionar con la KB '1medical_kb.pl', '2garage_kb.pl', '3animals_kb.pl' ó
        '4troubleshooting_kb.pl' ya que el conocimiento puede ser para detectar enfermedades en seres humanos,
        problemas mecánicos en un auto, animales o problemas en una PC.
*/

:- dynamic conocido/1.
consulta :-
    haz_diagnostico(X),
    escribe_diagnostico(X),
    ofrece_explicacion_diagnostico(X),
    clean_scratchpad.

consulta :-
    write('No hay suficiente conocimiento para elaborar un diagnostico.'),
    nl,
    clean_scratchpad.

haz_diagnostico(Diagnosis) :-
    obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas),
    prueba_presencia_de(Diagnosis, ListaDeSintomas).

obten_hipotesis_y_sintomas(Diagnosis, ListaDeSintomas) :-
    conocimiento(Diagnosis, ListaDeSintomas).

prueba_presencia_de(Diagnosis, []).
prueba_presencia_de(Diagnosis, [Head | Tail]) :-
    prueba_verdad_de(Diagnosis, Head),
    prueba_presencia_de(Diagnosis, Tail).

prueba_verdad_de(Diagnosis, Sintoma) :-
    conocido(Sintoma).

prueba_verdad_de(Diagnosis, Sintoma) :-
    not(conocido(is_false(Sintoma))),
    pregunta_sobre(Diagnosis, Sintoma, Reply), Reply = si.

pregunta_sobre(Diagnosis, Sintoma, Reply) :-
    write('Es verdad que '),
    nl,
    write(Sintoma),
    write('? '),
    read(Respuesta),
    process(Diagnosis, Sintoma, Respuesta, Reply).

process(Diagnosis, Sintoma, si, si) :-
    asserta(conocido(Sintoma)).

process(Diagnosis, Sintoma, no, no) :-
    asserta(conocido(is_false(Sintoma))).

process(Diagnosis, Sintoma, porque, Reply) :-
    write('Estoy investigando la siguiente hipotesis: '),
    nl,
    write(Diagnosis),
    write('.'),
    nl,
    write('Para esto necesito saber si '),
    nl,
    write(Sintoma),
    write('.'),
    nl,
    nl,
    pregunta_sobre(Diagnosis, Sintoma, Reply).

process(Diagnosis, Sintoma, Respuesta, Reply) :-
    Respuesta \== no,
    Respuesta \== si,
    Respuesta \== porque,
    write('Debes contestar "si.", "no." o "porque."'),
    nl,
    nl,
    pregunta_sobre(Diagnosis, Sintoma, Reply).

escribe_diagnostico(Diagnosis) :-
    write('El diagnostico es: '),
    write(Diagnosis),
    write('.'),
    nl.

ofrece_explicacion_diagnostico(Diagnosis) :-
    pregunta_si_necesita_explicacion(Respuesta),
    actua_consecuentemente(Diagnosis, Respuesta).

pregunta_si_necesita_explicacion(Respuesta) :-
    write('Quieres que justifique este diagnostico? '),
    read(RespuestaUsuario),

asegura_respuesta_si_o_no(RespuestaUsuario, Respuesta).
asegura_respuesta_si_o_no(si, si).
asegura_respuesta_si_o_no(no, no).
asegura_respuesta_si_o_no(_, Respuesta) :-
    write('Debes contestar "si." o "no."'),
    nl,
    nl,
    pregunta_si_necesita_explicacion(Respuesta).

actua_consecuentemente(Diagnosis, no).
actua_consecuentemente(Diagnosis, si) :-
    conocimiento(Diagnosis, ListaDeSintomas),
    write('Se determino este diagnostico porque se encontraron los siguentes sintomas: '),
    nl,
    escribe_lista_de_sintomas(ListaDeSintomas).

escribe_lista_de_sintomas([]).
escribe_lista_de_sintomas([Head | Tail]) :-
    write(Head),
    nl,
    escribe_lista_de_sintomas(Tail).

clean_scratchpad :-
    retract(conocido(X)),
    fail.
clean_scratchpad.
conocido(_):- fail.
not(X):- X,!,fail.
not(_).
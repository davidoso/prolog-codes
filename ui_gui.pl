%Librerías para el modo gráfico
:- use_module(library(pce)).
:- use_module(library(pce_style_item)).

main :-
    new(Menu, dialog('SISTEMA EXPERTO', size(500,500))),
    new(L,label(nombre, 'Benvenido al Sistema Experto Medico')),

    new(@texto, label(nombre, 'Por favor, conteste las siguientes preguntas:')),
    new(@resp1, label(nombre, '')),

    new(Salir, button('SALIR', and(message(Menu,destroy), message(Menu,free)))),
    new(@boton, button('CONSULTAR', message(@prolog,botones))),
    new(@btncarrera, button('DIAGNOSTICAR?')),

    send(Menu, append(L)),
    send(Menu, display, L, point(50,50)),
    send(Menu, display, @boton, point(50,100)),
    send(Menu, display, @texto, point(20,150)),
    send(Menu, display, Salir, point(150,100)),
    send(Menu, display, @resp1, point(350,150)),
    send(Menu, open_centered),
    send(@resp1, font, font(arial,bold,12)).

enfermedades(colesterol) :-
    colesterol,!.

enfermedades(diabetes) :-
    diabetes,!.

enfermedades('Enfermedad desconocida por el SE').

colesterol :-
    tiene_colesterol,
    pregunta('Tiene hinchazon en alguna extremidad del cuerpo?'),
    pregunta('Tiene perdida del equilibrio, mareo?'),
    pregunta('Tiene dolor de cabeza?'),
    pregunta('Tiene amarillo en sus ojos?').

diabetes :-
    tiene_diabetes,
    pregunta('Padece de orinar con frecuencia?'),
    pregunta('Padece de sed constante?'),
    pregunta('Padece de hambre excesiva?'),
    pregunta('Padece de perdida de peso inexplicable?').

desconocido :-
    se_desconoce_enfermedad.

tiene_colesterol :-
    pregunta('Tiene hinchazon en alguna extremidad del cuerpo?'),!.

tiene_diabetes :-
    pregunta('Padece de orinar con frecuencia?'),!.

:- dynamic si/1, no/1.

preguntar(Problema) :-
    new(Di, dialog('EXAMEN MEDICO')),
    new(L2, label(texto, 'Responde la siguiente pregunta: ')),
    new(La, label(prob, Problema)),
    new(B1, button(si, and(message(Di,return,si)))),
    new(B2, button(no, and(message(Di,return,no)))),
    send(Di, append(L2)),
    send(Di, append(La)),
    send(Di, append(B1)),
    send(Di, append(B2)),
    send(Di, default_button, si),
    send(Di, open_centered),
    get(Di, confirm, Answer),
    write(Answer),
    send(Di, destroy),
%    send(Di, free),
    ((Answer==si)->assert(si(Problema));
    assert(no(Problema)), fail).

pregunta(S) :-
    (si(S)->true; (no(S)->fail; preguntar(S))).

limpiar :-
    retract(si(_)), fail.
limpiar :-
    retract(no(_)), fail.
limpiar.

botones :-
    lim,
    send(@boton, free),
    send(@btncarrera, free),
    free(Enfer),
    enfermedades(Enfer),
    send(@texto, selection('Segun sus sintomas, usted probablemente padezca: ')),
    send(@resp1, selection(Enfer)),
    new(@boton, button('Iniciar su evaluacion', message(@prolog,botones))),
    send(Menu, display, @boton, point(50,100)),
    send(Menu, display, @btncarrera, point(100,100)),
    limpiar.

lim :-
    send(@resp1, selection('')).

var_limpia :-
    free(@texto),
    free(@resp1),
    free(@boton),
    free(@btncarrera).
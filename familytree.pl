%   KNOWLEDGE-BASED SYSTEM (KBS)
%   MY FAMILY TREE
%   ONLINE FAMILY TREE: https://www.familyecho.com/?p=START&c=163p3b59s9g&f=973860870116664574
%   CREATED:    May 10, 2018 09:15:41
%   MODIFIED:   May 18, 2018 22:10:57

/*
 *
 *  NOTATION AND MEANING OF TRAILING LETTERS
 *  p$  PARENT (NO GENRE)
 *  g$  GRANDPARENT (NO GENRE)
 *  u$  UNCLE (NO GENRE)
 *  c$  COUSIN (NO GENRE)
 *
*/


/*  FACTS */
man(david).         %   THIS IS ME
man(josep).         %   MY DAD

/*  MALE MEMBERS OF MY DADS FAMILY */
man(vicenteg).      %   MY DADS FATHER
man(vicenteu).
man(ninou).
man(javieru).
man(manou).
man(chulinu).
man(ivanc).
man(danielc).
man(galloc).
man(laloc).
man(sebastianc).
man(hijodemano1c).
man(hijodemano2c).
man(hijodemano3c).
man(hugoc).
man(pacoc).

/*  MALE MEMBERS OF MY MOMS FAMILY */
man(robertog).      %   MY MOMS FATHER
man(lazarou).
man(manuelu).
man(rubenu).
man(manolitoc).
man(abrahamc).
man(josuec).
man(roman).
man(joseluis).

woman(irmap).       %   MY MOM
woman(dulce).       %   MY SISTER

/*  FEMALE MEMBERS OF MY DADS FAMILY */
woman(mariag).      %   MY DADS MOTHER
woman(marthau).
woman(lupitau).
woman(sophiec).
woman(angiec).
woman(valec).
woman(nataliac).
woman(hijademano1c).
woman(hijademano2c).
woman(hijademano3c).
woman(carolinec).
woman(natybb).
woman(mago).
woman(nandayapa).
woman(paulina).
woman(jarocha).
woman(marichuy).
woman(fatima).
woman(anel).
woman(carmen).

/*  FEMALE MEMBERS OF MY MOMS FAMILY */
woman(antoniag).    %   MY MOMS MOTHER
woman(angelicau).
woman(enedeliau).
woman(chinac).
woman(danielac).
woman(lesliec).
woman(damarisc).
woman(licho).
woman(nena).

/*
 *
 *  BASIC PARENTHOOD RELATIONSHIPS (ALSO CALLED RULES)
 *  EXAMPLE: parent(X, P) IS READ FROM RIGHT TO LEFT: 'P IS THE PARENT OF X' OR 'P ES PAPÁ DE X' IN SPANISH
 *
*/

/*  (SON/DAUGHTER, MALE PARENT) */
parent(josep, vicenteg).
parent(vicenteu, vicenteg).
parent(ninou, vicenteg).
parent(javieru, vicenteg).
parent(manou, vicenteg).
parent(chulinu, vicenteg).
parent(marthau, vicenteg).
parent(lupitau, vicenteg).
parent(lazarou, robertog).
parent(manuelu, robertog).
parent(rubenu, robertog).
parent(irmap, robertog).
parent(angelicau, robertog).
parent(enedeliau, robertog).
parent(david, josep).
parent(dulce, josep).
parent(ivanc, vicenteu).
parent(danielc, vicenteu).
parent(galloc, ninou).
parent(sophiec, ninou).
parent(angiec, ninou).
parent(valec, ninou).
parent(laloc, javieru).
parent(nataliac, javieru).
parent(sebastianc, manou).
parent(hijodemano1c, manou).
parent(hijodemano2c, manou).
parent(hijodemano3c, manou).
parent(hijademano1c, manou).
parent(hijademano2c, manou).
parent(hijademano3c, manou).
parent(hugoc, chulinu).
parent(pacoc, chulinu).
parent(carolinec, chulinu).
parent(abrahamc, lazarou).
parent(josuec, lazarou).
parent(damarisc, lazarou).
parent(danielac, rubenu).
parent(lesliec, rubenu).
parent(natybb, danielc).


/*  (SON/DAUGHTER, FEMALE PARENT) */
parent(josep, mariag).
parent(vicenteu, mariag).
parent(ninou, mariag).
parent(javieru, mariag).
parent(manou, mariag).
parent(chulinu, mariag).
parent(marthau, mariag).
parent(lupitau, mariag).
parent(lazarou, antoniag).
parent(manuelu, antoniag).
parent(rubenu, antoniag).
parent(irmap, antoniag).
parent(angelicau, antoniag).
parent(enedeliau, antoniag).
parent(david, irmap).
parent(dulce, irmap).
parent(ivanc, mago).
parent(danielc, mago).
parent(galloc, nandayapa).
parent(sophiec, nandayapa).
parent(angiec, nandayapa).
parent(valec, nandayapa).
parent(laloc, paulina).
parent(nataliac, paulina).
parent(sebastianc, jarocha).
parent(hijodemano1c, jarocha).
parent(hijodemano2c, jarocha).
parent(hijodemano3c, jarocha).
parent(hijademano1c, jarocha).
parent(hijademano2c, jarocha).
parent(hijademano3c, jarocha).
parent(hugoc, carmen).
parent(pacoc, carmen).
parent(carolinec, carmen).
parent(manolitoc, enedeliau).
parent(chinac, enedeliau).
parent(abrahamc, licho).
parent(josuec, licho).
parent(damarisc, licho).
parent(danielac, nena).
parent(lesliec, nena).
parent(natybb, anel).


/*  CURRENT HUSBANDS AND WIVES */
spouse(vicenteg, mariag).       spouse(mariag, vicenteg).
spouse(robertog, antoniag).     spouse(antoniag, robertog).
spouse(josep, irmap).           spouse(irmap, josep).
spouse(vicenteu, mago).         spouse(mago, vicenteu).
spouse(ninou, nandayapa).       spouse(nandayapa, ninou).
spouse(javieru, paulina).       spouse(paulina, javieru).
spouse(manou, jarocha).         spouse(jarocha, manou).
spouse(chulinu, marichuy).      spouse(marichuy, chulinu).
spouse(ivanc, fatima).          spouse(fatima, ivanc).
spouse(danielc, anel).          spouse(anel, danielc).
spouse(lazarou, licho).         spouse(licho, lazarou).
spouse(rubenu, nena).           spouse(nena, rubenu).
spouse(enedeliau, roman).       spouse(roman, enedeliau).


/*  PAST HUSBANDS AND WIVES */
expartner(robertog, antoniag).  expartner(antoniag, robertog).
expartner(chulinu, carmen).     expartner(carmen, chulinu).
expartner(enedeliau, joseluis). expartner(joseluis, enedeliau).


/*  DEAD PEOPLE */
dead(robertog).
dead(antoniag).
dead(mariag).
dead(lupitau).
dead(angelicau).
dead(roman).


/*
 *
 *  ADVANCED RELATIONSHIPS (RULES)
 *
*/

/*  F is the father of X */
father(X, F) :-
    man(F),
    parent(X, F).

/*  M is the mother of X */
mother(X, M) :-
    woman(M),
    parent(X, M).

/*  S is the son (any genre) of X */
allsons(X, S) :-
    parent(S, X).

/*  S is the son (male) of X */
son(X, S) :-
    allsons(X, S),
    man(S).

/*  D is the daughter of X */
daughter(X, D) :-
    allsons(X, D),
    woman(D).

/*  GF is the grandfather of X */
grandfather(X, GF) :-
    father(P, GF),
    parent(X, P).

/*  GM is the grandmother of X */
grandmother(X, GM) :-
    mother(P, GM),
    parent(X, P).

/*  PGF is the father of the father of X */
paternalgrandfather(X, PGF) :-
    father(F, PGF),
    father(X, F).

/*  PGM is the mother of the father of X */
paternalgrandmother(X, PGM) :-
    mother(F, PGM),
    father(X, F).

/*  MGF is the father of the mother of X */
maternalgrandfather(X, MGF) :-
    father(M, MGF),
    mother(X, M).

/*  MGM is the mother of the mother of X */
maternalgrandmother(X, MGM) :-
    mother(M, MGM),
    mother(X, M).

/*  GPS is the grandparent (any genre) of X. GPS could return from 0 to 4 results */
grandparents(X, GPS) :-
    parent(P, GPS),
    parent(X, P).

/*  GFF is any grandparent (any genre) of X who is !dead, i.e. alive */
alivegrandparents(X, GFF) :-
    ( father(P, GFF) | mother(P, GFF) ),
    parent(X, P),
    \+ dead(GFF).

/*  GS is the grandson of X */
grandson(X, GS) :-
    parent(P, X),
    parent(GS, P),
    man(GS).

/*  GD is the granddaughter of X */
granddaughter(X, GD) :-
    parent(P, X),
    parent(GD, P),
    woman(GD).

/*
PROLOG WILL ALWAYS TRY TO FIND EVERY POSSIBLE SOLUTION AVAILABLE FOR THE STATEMENTS CONSIDERING THE SET OF TRUTHS. THIS MEANS IF A VARIABLE HAS TWO PARENTS IT WILL APPEAR TWICE (IN THE CASE OF MY UNCLES AND AUNTS AND ANY OTHER RELATIONSHIP THAT INVOLVES SIBLINGS)
*/
/*  S is the sibling of X */
siblings(X, S) :-
    ( father(X, F), father(S, F) |
    mother(X, M), mother(S, M) ),
    X \= S.

/*  B is the brother of X */
brother(X, B) :-
    man(B),
    siblings(X, B).

/*  SI is the sister of X */
sister(X, SI) :-
    woman(SI),
    siblings(X, SI).

/*  U is the BLOOD uncle (any genre) of X. U is the sibling of the father of X or the sibling of the mother of X */
alluncles(X, U) :-
    siblings(SIB, U),
    ( father(X, SIB) | mother(X, SIB) ).

/*  U is the BLOOD uncle (male) of X */
uncle(X, U) :-
    man(U),
    alluncles(X, U).

/*  U is the UNCLE-IN-LAW (male) of X. U is the husband of the sibling (sister) of X's parent */
uncle(X, U) :-
    husband(A, U),
    siblings(P, A),     %   Also sister(P, A)
    parent(X, P).

/*  A is the BLOOD aunt of X */
aunt(X, A) :-
    woman(A),
    alluncles(X, A).

/*  A is the AUNT-IN-LAW of X. A is the wife of the sibling (brother) of X's parent. */
aunt(X, A) :-
    wife(U, A),
    siblings(P, U),     %   Also brother(P, U)
    parent(X, P).

/*  U is the BLOOD uncle (any genre) of X. U is the sibling of the father of X */
allunclesdadside(X, U) :-
    father(X, F),
    siblings(F, U),
    F \= U.

/*  U is the BLOOD uncle (any genre) of X. U is the sibling of the mother of X */
allunclesmomside(X, U) :-
    mother(X, M),
    siblings(M, U),
    M \= U.

/*  N is the BLOOD nephew (any genre) of X. N is the child of the sibling of X */
allnephews(X, N) :-
    siblings(S, X),
    parent(N, S).

/*  N is the BLOOD nephew (male) of X */
nephew(X, N) :-
    allnephews(X, N),
    man(N).

/*  N is the NEPHEW-IN-LAW (male) of X. N is the child of the sibling of X's spouse */
nephew(X, N) :-
    spouse(X, SP),
    siblings(SIB, SP),
    parent(N, SIB),
    man(N).

/*  NI is the BLOOD niece of X */
niece(X, NI) :-
    allnephews(X, NI),
    woman(NI).

/*  NI is the NIECE-IN-LAW of X. N is the child of the sibling of X's spouse */
niece(X, NI) :-
    spouse(X, SP),
    siblings(SIB, SP),
    parent(NI, SIB),
    woman(NI).

/*  C is the cousin (any genre) of X. C is the son (any genre) of X's uncle (any genre) */
allcousins(X, C) :-
    alluncles(X, U),
    ( father(C, U) | mother(C, U) ).

/*  MC is the cousin (male) of X */
malecousins(X, MC) :-
    allcousins(X, MC),
    man(MC).

/*  FC is the cousin (female) of X */
femalecousins(X, FC) :-
    allcousins(X, FC),
    woman(FC).

/*  H is the husband of X */
husband(X, H) :-
    spouse(X, H),
    man(H).

/*  W is the wife of X */
wife(X, W) :-
    spouse(X, W),
    woman(W).

/*  DH is the dead husband of X. X is the widow and shes alive */
widow(X, DH) :-
    husband(X, DH),
    dead(DH),
    \+ dead(X).

/*  DW is the dead wife of X. X is the widower and hes alive */
widower(X, DW) :-
    wife(X, DW),
    dead(DW),
    \+ dead(X).

/*  FIL is the father-in-law of X */
fatherinlaw(X, FIL) :-
    father(S, FIL),
    spouse(X, S).

/*  MIL is the mother-in-law of X */
motherinlaw(X, MIL) :-
    mother(S, MIL),
    spouse(X, S).

/*  SIL is the sibling-in-law of X (more commonly brother-in-law or sister-in-law) */
/*  In this case, SIL is the sibling of X's spouse, in spanish: HERMANO DE TU ESPOSO (CONCUÑOS) */
siblingsinlaw(X, SIL) :-
    siblings(SIL, SP),
    spouse(X, SP).

/*  SIL is the sibling-in-law of X (more commonly brother-in-law or sister-in-law) */
/*  In this case, SIL is the spouse of X's sibling, in spanish: ESPOSO DE TU HERMANO (CUÑADOS) */
siblingsinlaw(X, SIL) :-
    spouse(SIL, SP),
    siblings(SP, X).

/*  HS is the half-sibling of X (more commonly half-brother or half-sister) */
/*  In this case, both X and HS are siblings that share the same father, but have different mother */
halfsiblings(X, HS) :-
    father(X, F),
    father(HS, F),
    mother(X, XM),
    mother(HS, HSM),
    XM \= HSM,
    X \= HS.

/*  HS is the half-sibling of X (more commonly half-brother or half-sister) */
/*  In this case, both X and HS are siblings that share the same mother, but have different father */
halfsiblings(X, HS) :-
    father(X, XF),
    father(HS, HSF),
    mother(X, M),
    mother(HS, M),
    XF \= HSF,
    X \= HS.

/*  ANC is the ancestor of X (X's parents), in spanish: LOS PAPÁS DE TUS PAPÁS */
ancestor(X, ANC) :-
    parent(X, ANC).

/*  ANC2 is the ancestor of X (parents of X's parents found recursively) */
ancestor(X, ANC2) :-
    parent(X, ANC),
    ancestor(ANC, ANC2).

/*  MANC is the male ancestor of X */
maleancestor(X, MANC) :-
    ancestor(X, MANC),
    man(MANC).

/*  FANC is the female ancestor of X */
femaleancestor(X, FANC) :-
    ancestor(X, FANC),
    woman(FANC).

/*  DES is the descendant of X (X's sons), in spanish: LOS HIJOS DE TUS HIJOS */
descendant(X, DES) :-
    parent(DES, X).

/*  DESDES is the descendant of X (children of X's children found recursively) */
descendant(X, DESDES) :-
    parent(DES, X),
    descendant(DES, DESDES).

/*  MDES is the male descendant of X */
maledescendant(X, MDES) :-
    descendant(X, MDES),
    man(MDES).

/*  FDES is the female descendant of X */
femaledescendant(X, FDES) :-
    descendant(X, FDES),
    woman(FDES).
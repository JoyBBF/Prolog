/*
 * EJERCICIO
 * Dada una lista del 1 al 30, Listar : [1,2,1..,30]
 */
menu:-
    write('-------------------------------------------------------'),nl,
    write('Ejercicio de listas:'),nl,
    write('Ingresada esta una lista:'),nl,
    L=[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30],write(L),nl,
    write('Operaciones con listas'),nl,
    write('1.Los múltiplos de 3'),nl,
    write('2.Los múltiplos de 5'),nl,
    write('3.Los impares comprendidos entre 12 y 26'),nl,
    write('4.Los pares que acaben en cero'),nl,
    write('5.Los impares múltiplos de 3 y 7'),nl,
    read(N),
    write('-------------------------------------------------------'),nl,
    opcion(N,L).

opcion(6,_):-
    true.
opcion(N,L):-
    (
    N=1->mult3(L);
    N=2->mult5(L);
    N=3->imp_12_26(L);
    N=4->par_a0(L);
    N=5->imp_m3_m7(L)),
    write('-------------------------------------------------------'),nl,
    menu.

% reglas secundarias
%
miembro(X,[X|_]).
miembro(X,[_|L]):-miembro(X,L).

mult3_aux(L):-miembro(X,L), 0 is X mod 3.
mult7_aux(L):-miembro(X,L), 0 is X mod 7.
% Los múltiplos de 3
%
mult3(L):-miembro(X,L), 0 is X mod 3,write(X),write(' es múltiplo de 3'),nl,fail.

%Los múltiplos de 5.
%
mult5(L):-miembro(X,L),X>=3,X =<27,0 is X mod 5,write(X),write(' es múltiplo de 5'),nl,fail.

% Los impares comprendidos entre 12 y 26
%
imp_12_26(L):-
    miembro(X,L),X >= 12, X =< 26 ,not(0 is X mod 2), write(X),nl,fail.

% Los pares que acaben en cero.
%
par_a0(L):-
    miembro(X,L),0 is X mod 2, 0 is X mod 10, write(X),nl,fail.

% Los impares múltiplos de 3 y 7
%
imp_m3_m7(L):-
    miembro(X,L), not(0 is X mod 2), mult3_aux([X]), mult7_aux([X]), write(X),nl,fail.

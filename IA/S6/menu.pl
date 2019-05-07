:-dynamic(menu/0).
menu:-
    write('-------------------------------------------------------'),nl,
    write('MENU GENERAL'),nl,
    write('1.SUMA DE DOS NÚMEROS'),nl,
    write('2.RESTA DE DOS NÚMEROS'),nl,
    write('3.MULTIPLICACIÓN DE DOS NÚMEROS'),nl,
    write('4.DIVISIÓN DE DOS NÚMEROS'),nl,
    write('5.POTENCIA'),nl,
    write('6.RESIDUO DE UNA DIVISIÓN'),nl,
    write('7.ENTERO DE UNA DIVISIÓN'),nl,
    write('8.FACTORIAL'),nl,
    write('9.ACKERMAN'),nl,
    write('10.FIBONACCI'),nl,
    write('11.LISTAS'),nl,
    write('12.LOGARITMOS'),nl,
    write('13.CAMBIO'),nl,
    write('14.SUMA DE GAUSS'),nl,
    write('15.BORRA'),nl,
    write('16.Cerrar programa'),nl,
    read(N),
    write('-------------------------------------------------------'),nl,
    opcion(N).

opcion(16):-
    true.
opcion(N):-
    (
    N=1->suma;
    N=2->resta;
    N=3->multiplicacion;
    N=4->division;
    N=5->potencia;
    N=6->mod;
    N=7->entero;
    N=8->factorial;
    N=9->ackerman;
    N=10->fibonacci;
    N=11->listas;
    N=12->logaritmos;
    N=13->cambio;
    N=14->gauss;
    N=15->borra),
    menu.
opcion(N):-
    write(N),write(' no es una opción, por favor elija una..'),nl,
    menu.
suma:-

    write('-------------------------------------------------------'),nl,
    write('Suma de dos números'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1+N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
resta:-
    write('-------------------------------------------------------'),nl,
    write('Resta de dos números'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1-N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
multiplicacion:-
    write('-------------------------------------------------------'),nl,
    write('Multiplicación de dos números'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1*N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
division:-
    write('-------------------------------------------------------'),nl,
    write('División de dos números'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1/N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
potencia:-
    write('-------------------------------------------------------'),nl,
    write('Potencia'),nl,
    write('Escriba el número: '),read(N1),nl,
    write('Escriba el número de potencia: '),read(N2),nl,
    R is N1^N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
mod:-
    write('-------------------------------------------------------'),nl,
    write('Residuo de una división'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1 mod N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
entero:-
    write('-------------------------------------------------------'),nl,
    write('Entero de una división'),nl,
    write('Escriba el primer número: '),read(N1),nl,
    write('Escriba el segundo número: '),read(N2),nl,
    R is N1 // N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.

factorial:-
    write('-------------------------------------------------------'),nl,
    write('Factorial'),nl,
    write('Escriba el número: '),read(N),nl,
    factorial(N,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
ackerman:-
    write('-------------------------------------------------------'),nl,
    write('Ackerman'),nl,
    write('Escriba el primer valor(M): '),read(M),nl,
    write('Escriba el segundo valor(N): '),read(N),nl,
    ackerman(M,N,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
fibonacci:-
    write('-------------------------------------------------------'),nl,
    write('Fibonacci'),nl,
    write('Escriba el número: '),read(N),nl,
    fibonacci(N,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
%!  LISTAS
logaritmos:-
    write('-------------------------------------------------------'),nl,
    write('Logaritmo Neperiano'),nl,
    write('Escriba el número: '),read(N),nl,
    R is log(N),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
%!  Cambio
gauss:-
    write('-------------------------------------------------------'),nl,
    write('Sumatoria de Gauss'),nl,
    write('Escriba el número: '),read(N1),nl,
    gauss(N1,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.

% reglas secundarias.
factorial(1,1):-
    !.
factorial(N,R):-
    N1 is N-1,factorial(N1,R1),R is N*R1.

gauss(0,0):-
    !.
gauss(N,R):-
    N1 is N-1,gauss(N1,R1),R is N+R1.

ackerman(0,N,R):-
    R is N+1,!.
ackerman(M,0,R):-
    M>0, M1 is M-1,ackerman(M1,1,R),!.
ackerman(M,N,R):-
    M>0,N>0,M1 is M-1,N1 is N-1,ackerman(M,N1,R1),ackerman(M1,R1,R),!.

fibonacci(0,0) :-
    !,true.
fibonacci(1,1) :-
    !,true.
fibonacci(N,X) :-
    N > 1,
    N1 is N-1,
    fibonacci(N1,X1),
    N2 is N-2,
    fibonacci(N2,X2),
    X is X1+X2,!.
























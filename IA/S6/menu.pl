:-dynamic(menu/0).
menu:-
    write('-------------------------------------------------------'),nl,
    write('MENU GENERAL'),nl,
    write('1.SUMA DE DOS N�MEROS'),nl,
    write('2.RESTA DE DOS N�MEROS'),nl,
    write('3.MULTIPLICACI�N DE DOS N�MEROS'),nl,
    write('4.DIVISI�N DE DOS N�MEROS'),nl,
    write('5.POTENCIA'),nl,
    write('6.RESIDUO DE UNA DIVISI�N'),nl,
    write('7.ENTERO DE UNA DIVISI�N'),nl,
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
    write(N),write(' no es una opci�n, por favor elija una..'),nl,
    menu.
suma:-

    write('-------------------------------------------------------'),nl,
    write('Suma de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1+N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
resta:-
    write('-------------------------------------------------------'),nl,
    write('Resta de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1-N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
multiplicacion:-
    write('-------------------------------------------------------'),nl,
    write('Multiplicaci�n de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1*N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
division:-
    write('-------------------------------------------------------'),nl,
    write('Divisi�n de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1/N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
potencia:-
    write('-------------------------------------------------------'),nl,
    write('Potencia'),nl,
    write('Escriba el n�mero: '),read(N1),nl,
    write('Escriba el n�mero de potencia: '),read(N2),nl,
    R is N1^N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
mod:-
    write('-------------------------------------------------------'),nl,
    write('Residuo de una divisi�n'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1 mod N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
entero:-
    write('-------------------------------------------------------'),nl,
    write('Entero de una divisi�n'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1 // N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.

factorial:-
    write('-------------------------------------------------------'),nl,
    write('Factorial'),nl,
    write('Escriba el n�mero: '),read(N),nl,
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
    write('Escriba el n�mero: '),read(N),nl,
    fibonacci(N,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
%!  LISTAS
logaritmos:-
    write('-------------------------------------------------------'),nl,
    write('Logaritmo Neperiano'),nl,
    write('Escriba el n�mero: '),read(N),nl,
    R is log(N),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl.
%!  Cambio
gauss:-
    write('-------------------------------------------------------'),nl,
    write('Sumatoria de Gauss'),nl,
    write('Escriba el n�mero: '),read(N1),nl,
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
























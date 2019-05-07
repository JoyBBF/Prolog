:-dynamic(menu/0).
menu:-
    write('-------------------------------------------------------'),nl,
    write('MENU GENERAL'),nl,
    write('1.SUMA DE DOS N�MEROS'),nl,
    write('2.RESTA DE DOS N�MEROS'),nl,
    write('3.MULTIPLICACI�N DE DOS N�MEROS'),nl,
    write('4.DIVISI�N DE DOS N�MEROS'),nl,
    write('5.POTENCIA'),nl,
    write('6.MOT'),nl,
    write('7.ENTERO'),nl,
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
opcion(N):-
    N=1->suma;
    N=2->resta;
    N=3->multiplicacion;
    N=4->division;
    N=5->potencia;
    N=6->mot;
    N=7->entero;
    N=8->factorial;
    N=9->ackerman;
    N=10->fibonacci;
    N=11->listas;
    N=12->logaritmos;
    N=13->cambio;
    N=14->gauss;
    N=15->borra.
opcion(16):-
    true.
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
    nl,nl,menu.
resta:-
    write('-------------------------------------------------------'),nl,
    write('Resta de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1-N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.
multiplicacion:-
    write('-------------------------------------------------------'),nl,
    write('Multiplicaci�n de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1*N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.
division:-
    write('-------------------------------------------------------'),nl,
    write('Divisi�n de dos n�meros'),nl,
    write('Escriba el primer n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1/N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.
potencia:-
    write('-------------------------------------------------------'),nl,
    write('Potencia'),nl,
    write('Escriba el n�mero: '),read(N1),nl,
    write('Escriba el segundo n�mero: '),read(N2),nl,
    R is N1/N2,write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.

factorial:-
    write('-------------------------------------------------------'),nl,
    write('Factorial'),nl,
    write('Escriba el n�mero: '),read(N1),nl,
    factorial(N1,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.
gauss:-
    write('-------------------------------------------------------'),nl,
    write('Sumatoria de Gauss'),nl,
    write('Escriba el n�mero: '),read(N1),nl,
    gauss(N1,R),
    write('->>El resultado es: '), write(R),nl,
    write('-------------------------------------------------------'),nl,
    write('-------------------------------------------------------'),nl,
    nl,nl,menu.

% reglas secundarias.
factorial(1,1):- !.
factorial(N,R):- N1 is N-1,factorial(N1,R1),R is N*R1.

gauss(0,0):-!.
gauss(N,R):- N1 is N-1,gauss(N1,R1),R is N+R1.




























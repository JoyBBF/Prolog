:-dynamic(factorial/1), dynamic(fact/2).

menu:-write('OPERACIÓN FACTORIAL'),nl,
    write('Escribe el número:'),nl,
    read(X),
    factorial(X).
fact(0,1):-!.
fact(N,R):-
    N1 is N-1,fact(N1,R1),R is N*R1,write(N),write('! = '),write(R),nl.

factorial(X):-
    fact(X,R),
    nl,
    write('-----------------------------------------------------------------------------------------------------------------'),nl,
write(' El resultado es :'),write(R),
    nl,
    write('-----------------------------------------------------------------------------------------------------------------').



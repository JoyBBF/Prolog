% combinatoria con listas

% permutacion(?Xs,?Ys) - Ys es una permutacion de Xs

permutacion([],[]).
permutacion([X|Xs],PXs) :-
	select(X,PXs,Ps),
        permutacion(Xs,Ps).

% combinacion(+N,+Xs,?Ys) - Ys es una combinacion de N elementos de Xs

combinacion(0,_Xs,[]).
combinacion(N,[X|Xs],[X|Cs]) :-
	N>0,
	N1 is N-1,
	combinacion(N1,Xs,Cs).
combinacion(N,[_X|Xs],Cs) :-
	N>0,
	combinacion(N,Xs,Cs).

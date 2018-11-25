% combinatoria con listas

% permutacion(?Xs,?Ys) - Ys es una permutacion de Xs

permutacion([],[]).
permutacion(L1,[X|L2]) :-
	select(X,L1,L3),
	permutacion(L3,L2).

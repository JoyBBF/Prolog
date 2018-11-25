combinacion(0,_Xs,[]) :-
    !,true.
combinacion(N,[X|Xs],[X|Cs]) :-
	N>0,
	N1 is N-1,
	combinacion(N1,Xs,Cs).
combinacion(N,[_X|Xs],Cs) :-
	N>0,
	combinacion(N,Xs,Cs).

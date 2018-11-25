%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% El problema de las N reinas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% reinas(+N,?Sol) - Sol es una solucion al problema de las N reinas

reinas(N,Solucion) :-
	rango(1,N,Disponibles),
	reinas(Disponibles,[],Solucion).

% reinas(+Disponibles,+Colocadas,?Solucion) - mover una fila
% de Disponibles a Colocadas comprobando que no hay ataques
% en diagonal

reinas([],Solucion,Solucion).
reinas(Disponibles,Colocadas,Solucion) :-
	select(Fila,Disponibles,Disponibles_1),
	no_ataca(Fila,Colocadas),
	reinas(Disponibles_1,[Fila|Colocadas],Solucion).

% no_ataca(+I,+Colocadas) - la reina de la fila I no ataca
% diagonalmente a las colocadas a su izquierda

no_ataca(Fila,Colocadas) :-
	no_ataca(Fila,1,Colocadas).

% no_ataca(+I,+J,+Colocadas) - la reina de la fila I no ataca
% diagonalemente a las colocadas a su izquierda

no_ataca(_,_,[]).
no_ataca(Fila,N,[F|Colocadas]) :-
	N =\= abs(Fila - F),
	N1 is N+1,
	no_ataca(Fila,N1,Colocadas).

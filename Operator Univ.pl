%		Univ
%	Operador para convertir Estructuras a lista y viceversa.
%-------------------------------------------------------------------------

%1. Desglosar los parametros del poligono en una lista 1 2 3 4 5
ladosiguales(P) :- P=.. [_|Lista], iguales(Lista).
%2. Comparar todos los elementos de la lista para ver si son iguales
iguales([]):- !,true.
iguales([_]):- !,true.
iguales([X,X|Lista]):- iguales([X|Lista]).

% declaro mi lista
%
numeros([1,2,3]).

% suma de elementos de una lista:
%
suma([],0):- !.
suma([X|L],R):- suma(L,R1), R is X+R1.

%longitud de una lista
%
longitud([],0):-!.
longitud([_|L],R):-longitud(L,R1),R is R1+1.

% es miembro de la lista.
%
miembro(X,[X|_]).
miembro(X,[_|L]):-miembro(X,L).


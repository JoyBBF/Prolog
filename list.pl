listar(L):- Cabeza=[1,1.1],Cola=[2,3,[3.1,3.2,3.3],4,5], L=[0,Cabeza|Cola].
%Una lista solo tiene dos elementos(Una cabeza y una cola).
dameCabeza([C|_],C).
dameCola([_|L],L).
%Eliminar los dos primeros elementos de la lista:
eliminarCabeza([_,_|L],L).

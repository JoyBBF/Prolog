progenitor(pedro,[ana,ramon,pedro,javier,josh,vilma,nicolas]).
progenitor(juan,[ben,pepe,josue,jesica,pavel,keith,kyle]).

persona(nombre, apellido, fechaNac(dia,mes,anno) ).
persona(pedro, lopez, fechaNac(22,07,1989)).

primerHijo(P,Hijo):- progenitor(P,[Hijo|_]).

padreDe(Padre,Hijo):- progenitor(Padre,Hijos),member(Hijo,Hijos).
%buscar(Hijo,[])        :- !,fail.
%Siempre es empiezan con casos base para la recursividad.
%buscar(Hijo,[Hijo|L])  :- !,true.
%buscar(Hijo,[C|L])     :- buscar(Hijo,L).


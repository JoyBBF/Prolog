hermanos(juan,victor).
hermanos(victor,max).
hermanos(max,alex).
hermanos(ana,maria,"Pánfila").

mostrar:- hermanos(X,Y,Z),write(X),write(' es hermano(a) de ')
,write(Y),write(' es hermano(a) de '),write(Z).

hermanitos:-hermanos(X,Z),hermanos(Z,Y),write(X),write(' es hermano(a) de ')
,write(Y),write(' es hermano(a) de '),write(Z).

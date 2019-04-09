pasaje(ica,25).
pasaje(arequipa,50).
pasaje(tacna,125).
alojamiento(ica,hostal,100).
alojamiento(ica,hostal,60).
alojamiento(ica,albergue,20).
alojamiento(arequipa,hostal,120).
alojamiento(arequipa,hostal,80).
alojamiento(arequipa,albergue,30).
alojamiento(tacna,hostal,80).
alojamiento(tacna,hostal,50).
alojamiento(tacna,albergue,25).

viaje(Ciudad,Dias,Alojamiento):- pasaje(Ciudad,X),alojamiento(Ciudad,Alojamiento,L),R is X+L*Dias,write(R).

comparar(G,R):-mayor1(S), G<S, R is S.
comparar(G,R):-mayor1(S), G=:=S, R is S.
comparar(G,R):-mayor1(S), G>S, R is G.

mayor1(G):- pasaje(Ciudad,X),alojamiento(Ciudad,_,L),G is X+L*3.
mayor:- mayor1(G),comparar(G,R),write(R),!.

comparar1(G,R):-menor1(S), G<S, R is G.
comparar1(G,R):-menor1(S), G=:=S, R is S.
comparar1(G,R):-menor1(S), G>S, R is S.

menor1(G):- pasaje(Ciudad,X),alojamiento(Ciudad,_,L),G is X+L*5.
menor:- menor1(G),comparar1(G,R),write(R),!.


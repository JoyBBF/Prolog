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

%reglas secundarias
estadia(CostoPasaje,CostoAlojamiento,Ciudad):-
    pasaje(Ciudad,CostoPasaje),alojamiento(Ciudad,_,CostoAlojamiento).
gastoTotal(GastoTotal,CostoPasaje,CostoAlojamiento,Dias):-
    GastoTotal is CostoPasaje+CostoAlojamiento*Dias.
menor(X,Y):-
    X<Y.


/*Viaje a algun lugar seleccionado
*/
viaje(Ciudad,Dias,Alojamiento):- pasaje(Ciudad,X),alojamiento(Ciudad,Alojamiento,L),R is X+L*Dias,write(R).
/*----------------------------------------------*/

/*Hallar y mostrar el mayor de los costos en 3 días.
*/
comparar(G,R):-mayor1(S), G<S, comparar(S,R).
comparar(G,R):-mayor1(S), G=:=S, R is G.
comparar(G,R):-mayor1(S), G>S,  comparar(G,R).

mayor1(G):- estadia(X,L,_),gastoTotal(G,X,L,3).
mayor:- mayor1(G),comparar(G,R),write(R),!.
/*----------------------------------------------*/

/*Hallar y mostrar el menor de los costos en 5 días.
*/
comparar1(G,R):-menor1(S), G>S, comparar1(S,R).
comparar1(G,R):-menor1(S), G==S, R is G.
comparar1(G,R):-menor1(S), G<S, comparar1(G,R).

menor1(G):- estadia(X,L,_),gastoTotal(G,X,L,5).
menor:- menor1(G),comparar1(G,R),write(R),!.
/*----------------------------------------------*/

/*Teniendo un presupuesto de S/.100 , ¿Qué posibilidades tengo?
Having as maxima 100, What posibilities I have?
*/
viaje100:-estadia(X,L,_),gastoTotal(G,X,L,1),menor(G,100),write(G).
/*----------------------------------------------*/

/*Si voy a viajar en grupo de 5 personas por 7 días, ¿Cuáles son las mejores posibilidades?
 * if i'm going to travel in group of 5 people by 7 days, Which are the
 * best posibilities?
 */

posibilidades57:-estadia(X,L,Lugar),gastoTotal(G,X,L,7), GastoGrupo is 5*G, write(Lugar), write(' cuesta '), write(GastoGrupo).
/*-----------------------------------------------------*/

/*Si voy a viajar en pareja por 3 días, ¿Cuásl es la mejor alternativa?
 * if i'm going to travel in pair by 3 days, Which is the best option?
 */
comparar2(G,R):-posibilidad23(S), G>S, comparar2(S,R).
comparar2(G,R):-posibilidad23(S), G==S, R is G.
comparar2(G,R):-posibilidad23(S), G<S, comparar2(G,R).

posibilidad23(GastoGrupo):-estadia(X,L,_),gastoTotal(G,X,L,3), GastoGrupo is 5*G.
posibilidades23:-posibilidad23(G),comparar2(G,R),write('La mejor opción en pareja es:'),nl, write('Un lugar cualquiera'), write(' cuesta '), write(R).









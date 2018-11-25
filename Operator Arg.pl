li(Poligono):- functor(Poligono,Nombre,Cantidad), bi(P,Cantidad).
%p(1,2,3) p[3]=3
bi(P,0):- !,true.
bi(P,1):- !,true.
bi(P,N):- arg(N,P,Num1), Ant is N-1,arg(Ant,P,Num2), Num1 == Num2, bi(P,Ant).
%N=Cantidad

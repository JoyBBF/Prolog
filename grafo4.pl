conexion(d,h).
conexion(h,f).
conexion(i,f).
conexion(f,g).
conexion(f,a).
conexion(a,b).

camino(X,Y):- conexion(X,Y).
camino(X,Y):- conexion(X,Z),camino(Z,Y).

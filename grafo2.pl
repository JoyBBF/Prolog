conexion(1,2).
conexion(2,6).
conexion(2,3).
conexion(6,5).
conexion(4,5).
conexion(5,2).

camino(X,Y):-conexion(X,Y).
camino(X,Y):-conexion(X,Z),camino(Z,Y).

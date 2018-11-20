%-------------------Selectores-----------
%Encapsula la estructura y te permite cambiar en solo dos lineas la posición en lugar de hacerlo en cada objeto.

existe(persona(apellido,nombre,edad,sexo)).

dameNombre(persona(_,nombre,_,_),Nombre) :- 
%------Como solo quiero el nombre lo demás lo dejamos como variable anónima.
codigo(P) :- dameNombre(P,Nombre1).
codigo(V) :- dameNombre(V,Nombre2).


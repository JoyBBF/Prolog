%-------------------Selectores-----------
%Encapsula la estructura y te permite cambiar en solo dos lineas la posici�n en lugar de hacerlo en cada objeto.

existe(persona(apellido,nombre,edad,sexo)).

dameNombre(persona(_,nombre,_,_),Nombre) :- 
%------Como solo quiero el nombre lo dem�s lo dejamos como variable an�nima.
codigo(P) :- dameNombre(P,Nombre1).
codigo(V) :- dameNombre(V,Nombre2).


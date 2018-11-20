%carro(chapa,consumo_por_km_recorrido,tipo, listado_choferes)
carro(hav379,0.2,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav382,0.5,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav383,0.4,petroleo,[chofer(kyle,5,17),chofer(josh,12,60),chofer(juan,3,8)]).
carro(hav380,0.3,gasolina,[chofer(pedro,20,56),chofer(kyle,5,30),chofer(pedro,20,56)]).
%chofer(nombre,años_experiencia,km_recorridos)

%Resolver mediante preguntas a la base de conocimientos:

%a)¿Qué cantidad de choferes han conducido el carro que tiene 
%	como chapa la que entre el usuario por consola?
cantidad :-
write('Entre la Chapa del carro : '),read(Chapa),carro(Chapa,_,ListaChoferes), 
length(ListaChoferes,Cantidad),write('La cantidad es : '),write(Cantidad).

%b)¿Cuáles son las chapas de todos los carros que consumen petróleo?

%Respuesta = Chapa
%Objetivo = carro(Chapa,_,petroleo,_).
%findall( Respuesta, Objetivo, ListaRespuestas).

listadoChapas :-
	findall(Chapa, carro(Chapa,_,petroleo,_), ListaChapas),
	mostrarChapas(ListaChapas).
mostrarChapas([]):-
	!.
mostrarChapas([C|ListaChapas]) :-
	write(C), nl, mostrarChapas(ListaChapas).

%c)Dada la chapa de un carro y una cantidad de combustible determinar cuántos km puede
%	recorrer dicho carro con el combustible dado.

cantKm(Chapa, Combustible, CantKm) :-
	carro(Chapa,Consumo,_,_),CantKm is Consumo*Combustible.




 

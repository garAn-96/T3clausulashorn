es_objeto(martillo).
es_objeto(silla).
es_objeto(mesa).
es_objeto(destornillador).
es objeto(cuchara).

%materiales
material(martillo,metal).
material(destornillador,metal).
material(mesa,madera).
material(cuchara,plastico).
material(silla,madera).

%categorias
tipo(martillo,herramienta).
tipo(destornillador,herramienta).
tipo(mesa,mueble).
tipo(cuchara,utensilio).
tipo(silla,mueble).

 %reglas
 %un objeto es metalico si su material es metal
es_metalico(X) :- material(X,metal).
 %un objeto es de madera si su material es madera
 es_madera(X) :- material(X,madera).
 %un objeto es una herramienta si su tipo es heramienta
 es_herramienta(X) :- tipo(X,herramienta).
 %un objeto es utilizable si es herramienta o utensilio.
 es_utensilio(X) :- tipo(X,utensilio).
 es_utilizable(X) :- es_herramienta(X); es_utensilio(X),!.



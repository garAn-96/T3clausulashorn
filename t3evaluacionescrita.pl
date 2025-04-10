%Nombres Bina: Vieyra Andrade Raziel Job -21200992
%              Garcia Angeles Karen      -14200337
%Ejercicio 1. Articulo de investigación.

% Hechos.
humano(socrates).
humano(platon).
ama(juan,maria).

% Reglas: 
%si alguien es humano, entonces es mortal.
mortal(X):- humano(X). 
%que mujeres son cientificas
mujeres_cientificas(X) :- false.
%quienes son pensadores?
pensadores(X) :- false.
%socrates es sabio
sabio(X) :- false.
%que humanos son antiguos
humanos_antiguos(X) :- false.
%hay alquien que ame a maria?
alguien_ama_a_maria(X) :- ama(X, maria).
%quienes son pemnsadores(filosofos y cientificos)?
pensadores_cientificos(X) :- false.
%que filosofo es igual a platon usando unificacion
filosofo_igual_a_platon(X) :- false.

%Ejercicio 2.Torres de Hanoi
% Hechos de discos en cada torre
poste(1, [3, 2, 1]).  % poste 1 tiene los discos 3, 2, 1
poste(2, []).          % poste 2 está vacía
poste(3, []).          % poste 3 está vacía
%Reglas para resolver el problema 
hanoi(N) :- mover(N, poste1, poste3, poste2).
% Base de la recursión: mover 0 discos.
mover(0, _, _, _).
%Regla recursiva: mover N discos de un poste A a un poste B usando C como auxiliar
mover(N,A,B,C) :- N > 0, M is N - 1, mover(M,A,C,B), escribir_mov(A,B), mover(M,C,B,A).
%Movimiento de un poste a otro
escribir_mov(Desde,Hasta) :- write('mover desde: '), write(Desde),write(' hasta: '), write(Hasta), nl.


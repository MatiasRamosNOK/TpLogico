%candidato(persona,partido).
candidato(frank,rojo).
candidato(claire,rojo).
candidato(garrett,azul).
candidato(jackie,amarillo).
candidato(_,violeta).
candidato(linda,azul).
candidato(catherine,rojo).
candidato(seth,amarillo).
candidato(heather,amarillo).
not(candidato(peter,amarillo)).
edad(heather,50).
edad(catherine,59).
edad(linda,30).
edad(frank,50).
edad(peter,26).
edad(jackie,38).
edad(claire,52).
edad(garrett,64).
sePresentan(buenosAires,[rojo,azul,amarillo]).
sePresentan(chacho,[rojo,amarillo]).
sePresentan(tierraDelFuego,[rojo,azul]).
sePresentan(sanLuis,[rojo,azul]).
sePresentan(neuquen,[azul]).
sePresentan(santaFe,[rojo]).
sePresentan(cordoba,[rojo]).
sePresentan(chubut,[rojo]).
sePresentan(formosa,[amarillo]).
sePresentan(tucuman,[amarillo]).
sePresentan(salta,[amarillo]).
sePresentan(santaCruz,[amarillo]).
sePresentan(laPampa,[amarillo]).
sePresentan(corrientes,[amarillo]).
sePresentan(misiones,[amarillo]).
habitantes(buenosAires,15335000).
habitantes(chacho,1143201).
habitantes(tierraDelFuego,160720).
habitantes(sanLuis,489255).
habitantes(neuquen,637913).
habitantes(santaFe,3397532).
habitantes(cordoba,3567654).
habitantes(chubut,577466).
habitantes(formosa,527895).
habitantes(tucuman,1687305).
habitantes(salta,1333365).
habitantes(santaCruz,273964).
habitantes(laPampa,273964).
habitantes(corrientes,992595).
intencionDeVotoEn(buenosAires, rojo, 40).
intencionDeVotoEn(buenosAires, azul, 30).
intencionDeVotoEn(buenosAires, amarillo, 30).
intencionDeVotoEn(chaco, rojo, 50).
intencionDeVotoEn(chaco, azul, 20).
intencionDeVotoEn(chaco, amarillo, 0).
intencionDeVotoEn(tierraDelFuego, rojo, 40).
intencionDeVotoEn(tierraDelFuego, azul, 20).
intencionDeVotoEn(tierraDelFuego, amarillo, 10).
intencionDeVotoEn(sanLuis, rojo, 50).
intencionDeVotoEn(sanLuis, azul, 20).
intencionDeVotoEn(sanLuis, amarillo, 0).
intencionDeVotoEn(neuquen, rojo, 80).
intencionDeVotoEn(neuquen, azul, 10).
intencionDeVotoEn(neuquen, amarillo, 0).
intencionDeVotoEn(santaFe, rojo, 20).
intencionDeVotoEn(santaFe, azul, 40).
intencionDeVotoEn(santaFe, amarillo, 40).
intencionDeVotoEn(cordoba, rojo, 10).
intencionDeVotoEn(cordoba, azul, 60).
intencionDeVotoEn(cordoba, amarillo, 20).
intencionDeVotoEn(chubut, rojo, 15).
intencionDeVotoEn(chubut, azul, 15).
intencionDeVotoEn(chubut, amarillo, 15).
intencionDeVotoEn(formosa, rojo, 0).
intencionDeVotoEn(formosa, azul, 0).
intencionDeVotoEn(formosa, amarillo, 0).
intencionDeVotoEn(tucuman, rojo, 40).
intencionDeVotoEn(tucuman, azul, 40).
intencionDeVotoEn(tucuman, amarillo, 20).
intencionDeVotoEn(salta, rojo, 30).
intencionDeVotoEn(salta, azul, 60).
intencionDeVotoEn(salta, amarillo, 10).
intencionDeVotoEn(santaCruz, rojo, 10).
intencionDeVotoEn(santaCruz, azul, 20).
intencionDeVotoEn(santaCruz, amarillo, 30).
intencionDeVotoEn(laPampa, rojo, 25).
intencionDeVotoEn(laPampa, azul, 25).
intencionDeVotoEn(laPampa, amarillo, 40).
intencionDeVotoEn(corrientes, rojo, 30).
intencionDeVotoEn(corrientes, azul, 30).
intencionDeVotoEn(corrientes, amarillo, 10).
intencionDeVotoEn(misiones, rojo, 90).
intencionDeVotoEn(misiones, azul, 0).
intencionDeVotoEn(misiones, amarillo, 0).



esPicante(Provincia):- habitantes(Provincia,Numero),Numero>1000000, sePresentan(Provincia,Alguien),length(Alguien,Numero2),Numero2>=3.

%Hay tres casos
%CandidatoUno se presenta y CandidatoDos no -> gana CandidatoUno
%Ambos se presentan (distintos partidos) entonces se hace diferencia por votos, si hay empate no se cumple
%Ambos se presentan (igual partido) entonces gana el primero

leGanaA(CandidatoUno,CandidatoDos,Provincia):-
sePresenta(CandidatoUno,Provincia),
not(sePresenta(CandidatoDos,Provincia)).

leGanaA(CandidatoUno,CandidatoDos,Provincia):- 
candidato(CandidatoUno,PartidoUno),
candidato(CandidatoDos,PartidoDos),
sePresenta(CandidatoUno,Provincia),
sePresenta(CandidatoDos,Provincia),
mismoPartido(CandidatoUno,CandidatoDos),
intencionDeVotoEn(Provincia,PartidoUno,NumeroUno),
intencionDeVotoEn(Provincia,PartidoDos,NumeroDos),
NumeroUno>NumeroDos.

leGanaA(CandidatoUno,CandidatoDos,Provincia):-
candidato(CandidatoUno,PartidoUno),
candidato(CandidatoDos,PartidoDos),
sePresenta(CandidatoUno,Provincia),
sePresenta(CandidatoDos,Provincia),
sePresentan(Provincia,PartidoUno),
PartidoUno==PartidoDos.

sePresenta(Candidato,Provincia):- candidato(Candidato,Partido),sePresentan(Provincia,ListaPartidos),member(Partido,ListaPartidos). 
mismoPartido(CandidatoUno,CandidatoDos):-candidato(CandidatoUno,PartidoUno),candidato(CandidatoDos,PartidoDos),PartidoUno==PartidoDos.
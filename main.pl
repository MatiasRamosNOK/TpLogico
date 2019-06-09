%candidato(persona,partido).
candidato(frank,rojo).
candidato(claire,rojo).
candidato(garrett,azul).
candidato(jackie,amarillo).
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
sePresentan(chaco,[rojo,amarillo]).
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
habitantes(chaco,1143201).
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
intencionDeVoto(buenosAires,[40,30,30]).
intencionDeVoto(chaco,[50,20,0]).
intencionDeVoto(tierraDelFuego,[40,20,10]).
intencionDeVoto(sanLuis,[50,20,0]).
intencionDeVoto(neuquen,[80,10,0]).
intencionDeVoto(santaFe,[20,40,40]).
intencionDeVoto(cordoba,[10,60,20]).
intencionDeVoto(chubut,[15,15,15]).
intencionDeVoto(formosa,[0,0,0]).
intencionDeVoto(tucuman,[40,40,20]).
intencionDeVoto(salta,[30,60,10]).
intencionDeVoto(santaCruz,[10,20,30]).
intencionDeVoto(laPampa,[25,25,40]).
intencionDeVoto(corrientes,[30,30,10]).
intencionDeVoto(misiones,[90,0,0]).

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

% inflacion(contaInferior, cotaSuperior)
% construir(listaDeObras)
% nuevosPuestosDeTrabajo(cantidad)
% edilicio(hospital, 800)

partido(azul,construir([edilicio(hospital,1000),edilicio(jardines,100),edilicio(escuelas,5)])).
partido(amarillo,construir([edilicio(hospital,100),edilicio(universidad,1),edilicio(comisaria,200)])).
partido(rojo,nuevosPuestosDeTrabajo(800000)).
partido(amarillo,nuevosPuestosDeTrabajo(10000)).
partido(rojo,inflacion(10,30)).
partido(amarillo,inflacion(1,15)).
partido(azul,inflacion(2,4)).





esPicante(Provincia):- habitantes(Provincia,Numero),Numero>1000000, sePresentan(Provincia,Alguien),length(Alguien,Numero2),Numero2>=3.

%Hay tres casos
%CandidatoUno se presenta y CandidatoDos no -> gana CandidatoUno
%Ambos se presentan (distintos partidos) entonces se hace diferencia por votos, si hay empate no se cumple
%Ambos se presentan (igual partido) entonces gana el primero


%Punto tres
leGanaA(CandidatoUno,CandidatoDos,Provincia):- 
sePresenta(CandidatoUno,Provincia),
sePresenta(CandidatoDos,Provincia),
candidato(CandidatoUno,PartidoUno),
candidato(CandidatoDos,PartidoDos),
intencionDeVotoEn(Provincia,PartidoUno,PorcentajeUno),
intencionDeVotoEn(Provincia,PartidoDos,PorcentajeDos),
PorcentajeUno>PorcentajeDos.

leGanaA(CandidatoUno,CandidatoDos,Provincia):-
sePresenta(CandidatoUno,Provincia),
candidato(CandidatoUno,Partido),
sePresentan(Provincia,ListaPartidos),
member(Partido,ListaPartidos).

leGanaA(CandidatoUno,CandidatoDos,Provincia):-
mismoPartido(CandidatoUno,CandidatoDos),
sePresenta(CandidatoUno,Provincia).

sePresenta(Candidato,Provincia):- candidato(Candidato,Partido),sePresentan(Provincia,ListaPartidos),member(Partido,ListaPartidos). 
mismoPartido(CandidatoUno,CandidatoDos):- candidato(CandidatoUno,PartidoUno),candidato(CandidatoDos,PartidoDos),(PartidoUno==PartidoDos).

%Punto cuatro
elGranCandidato(Candidato):- 
candidato(CandidatoDos,_),
forall(dondeCompite(Candidato,ListaProvincias),(leGanaA(Candidato,CandidatoDos,ListaProvincias),Candidato\==CandidatoDos)).
dondeCompite(Candidato,ListaProvincias):- candidato(Candidato,Partido),sePresentan(ListaProvincias,ListaPartidos),member(Partido,ListaPartidos).
%compañerosDeFormula(Candidato,Candidatos):- candidato(Candidato,PartidoUno),findall(CandidatoDos,(candidato(CandidatoDos,PartidoDos),PartidoUno==PartidoDos,Candidato\==CandidatoDos),Candidatos).

elMenorDelPartido(Candidato):-
	candidato(Candidato,Partido),
	findall(Edad,(candidato(UnCandidato,Partido),edad(UnCandidato,Edad)),EdadesCandidatos),
  edad(Candidato,EdadCandidato),
	min_list(EdadesCandidatos,EdadCandidato).



%Punto cinco
malasConsultoras(Partido,Provincia,PorcentajeRealVoto):-
intencionDeVotoEn(Provincia,Partido,Numero),
forall((intencionDeVotoEn(Provincia,Partidos,Numeros),Partido\==Partidos),Numero>Numeros),
PorcentajeRealVoto is (Numero-20).

malasConsultoras(Partido,Provincia,PorcentajeRealVoto):-
intencionDeVotoEn(Provincia,Partido,Numero),
intencionDeVoto(Provincia,ListaVotos),
max_member(NumeroDos,ListaVotos),
Numero<NumeroDos,
PorcentajeRealVoto is (Numero+5).

%Punto seis
promete(Partido,Algo):-
partido(Partido,Algo).

%punto siete
influenciaDePromesas(inflacion(CotaInferior,CotaSuperior),Influencia):-
	Influencia is -(CotaInferior + CotaSuperior)/2.
influenciaDePromesas(nuevosPuestosDeTrabajo(Cantidad),Influencia):-
	Cantidad >= 50000,
	Influencia is 3.

influenciaDePromesas(construir([edilicio(hospital,_)]),Influencia):-
	Influencia is 2.
influenciaDePromesas(construir([edilicio(hospital,_)|SiguientesEdilicios]),Influencia):-
	influenciaDePromesas(construir(SiguientesEdilicios),SegundaInfluencia),
	Influencia is 2 + SegundaInfluencia.
influenciaDePromesas(construir([edilicio(jardines,Cantidad)]),Influencia):-
	Influencia is Cantidad * 0.1.
influenciaDePromesas(construir([edilicio(jardines,Cantidad)| SiguientesEdilicios]),Influencia):-
	influenciaDePromesas(construir(SiguientesEdilicios),SegundaInfluencia),
	Influencia is (Cantidad*0.1)+SegundaInfluencia.
influenciaDePromesas(construir([edilicio(escuelas,Cantidad)]),Influencia):-
	Influencia is Cantidad * 0.1.
influenciaDePromesas(construir([edilicio(escuelas,Cantidad)|SiguientesEdilicios]), Influencia):-
	influenciaDePromesas(construir(SiguientesEdilicios),SegundaInfluencia),
	Influencia is (Cantidad * 0.1)+SegundaInfluencia.
influenciaDePromesas(construir([edilicio(comisarias,200)]),Influencia):-
	Influencia is 200.
influenciaDePromesas(construir([edilicio(comisarias,200)|SiguientesEdilicios]),Influencia):-
	influenciaDePromesas(construir(SiguientesEdilicios),SegundaInfluencia),
	Influencia is 200+SegundaInfluencia.
influenciaDePromesas(construir([edilicio(universidad,_)]),0).
influenciaDePromesas(construir([edilicio(universidad,_)|SiguientesEdilicios]),Influencia):-
	influenciaDePromesas(construir(SiguientesEdilicios),SegundaInfluencia),
	Influencia is SegundaInfluencia.
%sumaDeEdilicios(construir([edilicio(_,_)]),-1).
%sumaDeEdilicios(construir([edilicio(_,_)|SiguientesEdilicios]),Influencia):-
%%sumaDeEdilicios(construir(SiguientesEdilicios),SegundaInfluencia),
%	Influencia is -1 + SegundaInfluencia.
%

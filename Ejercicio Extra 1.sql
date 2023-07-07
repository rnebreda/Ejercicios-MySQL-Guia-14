/*
1. Mostrar el nombre de todos los jugadores ordenados alfabéticamente.
*/
select nombre from jugadores order by nombre asc;

/*
2. Mostrar el nombre de los jugadores que sean pivots (‘C’) y que pesen más de 200 libras, 
ordenados por nombre alfabéticamente.
*/
select nombre, Posicion, peso from jugadores where Posicion = "C" and peso > 200 order by nombre asc;

/*
3. Mostrar el nombre de todos los equipos ordenados alfabéticamente.
*/
select nombre from equipos order by nombre asc;

/*
4. Mostrar el nombre de los equipos del este (East).
*/
select nombre, Conferencia from equipos where Conferencia = "east";

/*
5. Mostrar los equipos donde su ciudad empieza con la letra ‘c’, ordenados por nombre.
*/
select nombre, Ciudad from equipos where ciudad like "c%" order by nombre;

/*
6. Mostrar todos los jugadores y su equipo ordenados por nombre del equipo.
*/
select nombre, nombre_equipo as equipo from jugadores order by equipo;

/*
7. Mostrar todos los jugadores del equipo “Raptors” ordenados por nombre
*/
select nombre, nombre_equipo as equipo from jugadores where nombre_equipo = "Raptors" order by nombre;

/*
8. Mostrar los puntos por partido del jugador ‘Pau Gasol’.
*/
select e.puntos_por_partido, e.temporada, j.nombre,j.codigo from jugadores j inner join  estadisticas e on e.jugador=j.codigo where j.nombre = "Pau Gasol";

/*
9. Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′
*/
select e.puntos_por_partido, e.temporada, j.nombre,j.codigo from jugadores j inner join  estadisticas e on e.jugador=j.codigo where j.nombre = "Pau Gasol" and e.temporada = "04/05";

/*
10. Mostrar el número de puntos de cada jugador en toda su carrera.
*/
select e.puntos_por_partido, e.temporada, j.nombre,j.codigo from jugadores j inner join  estadisticas e on e.jugador=j.codigo order by j.nombre;

/*otra*/
select sum(e.puntos_por_partido), j.nombre,j.codigo from jugadores j inner join  estadisticas e on e.jugador=j.codigo group by j.codigo order by j.nombre;


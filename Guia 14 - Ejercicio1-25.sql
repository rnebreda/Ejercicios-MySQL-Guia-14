/*
Consultas con Having 
25. Hallar los departamentos que tienen más de tres empleados. Mostrar el número de 
empleados de esos departamentos.
a - Observar que en el having puedo usar el alias de la columna count(nombre);
*/
select count(nombre) as cantidad, id_depto as departamento from empleados group by id_depto having cantidad>3;
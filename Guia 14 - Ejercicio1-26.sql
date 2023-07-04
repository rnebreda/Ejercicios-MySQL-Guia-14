/*
Consultas con Having 
26. Hallar los departamentos que no tienen empleados
*/
select count(nombre) as cantidad, id_depto as departamento from empleados group by id_depto having cantidad=0;
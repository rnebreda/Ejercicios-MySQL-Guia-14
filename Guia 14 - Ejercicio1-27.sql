/*
Consulta Multitabla (Uso de la sentencia INNER JOIN/LEFT JOIN/RIGHT JOIN)
27. Mostrar la lista de empleados, con su respectivo departamento y el jefe de cada 
departamento.
*/
select nombre, nombre_depto as departamento, nombre_jefe_depto as jefe from empleados inner join departamentos on empleados.id_depto=departamentos.id_depto;
/*
20. Ahora obtener el contrario, los nombres de los departamentos que no sean “Ventas” ni 
“Investigación” ni ‘Mantenimiento.
*/
select nombre_depto from departamentos where nombre_depto not in ("Ventas", "Investigación", "Mantenimiento");
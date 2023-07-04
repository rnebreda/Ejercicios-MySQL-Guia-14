/*
19. Obtener los nombres de los departamentos que sean “Ventas”, “Investigación” o
‘Mantenimiento.
*/
select nombre_depto from departamentos where nombre_depto in ("Ventas", "Investigación", "Mantenimiento");
/*
5. Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean 
representantes de ventas.
*/
select puesto, nombre, apellido1, apellido2 from empleado where puesto not like "rep%";
/*
4. Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
*/
select puesto, nombre, apellido1, apellido2, email from empleado where codigo_jefe is null;
/*
8. Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago 
en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan 
repetidos. Resuelva la consulta:
a - Utilizando la función YEAR de MySQL.
b - Utilizando la función DATE_FORMAT de MySQL.
c - Sin utilizar ninguna de las funciones anteriores.
*/
select distinct codigo_cliente from pago where fecha_pago between "2008-01-01" and "2008-12-31";
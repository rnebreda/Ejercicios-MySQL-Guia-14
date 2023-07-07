/*
6. Devuelve un listado con el nombre de los todos los clientes españoles.
*/
select nombre_cliente as ckiente, pais from cliente where pais like "sp%";
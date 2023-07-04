/*
18. Hallar los empleados cuyo nombre no contiene la cadena “MA”
a - Observar que no distingue minúsculas de mayúsculas
*/
select nombre from empleados where nombre not like "%MA%";
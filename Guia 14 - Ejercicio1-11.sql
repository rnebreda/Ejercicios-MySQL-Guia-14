/*
11. Listar los salarios y comisiones de los empleados del departamento 2000, ordenado 
por comisión de menor a mayor.
a - Agrego una segunda condición de ordenamiento no necesaria:
1° Comisiones asc (de menor a mayor),
2° Salarios desc (de mayor a menor).
*/
select sal_emp as Salarios, comision_emp as Comisiones from empleados where id_depto = 2000 order by Comisiones, Salarios desc ;
/*
8. Obtener el nombre y cargo de todos los empleados, ordenados por salario de menor a 
mayor.
a - agrego columna salario para controlar, pero no es necesaria
b - en Order by puedo colocar el nombre original de la columna (sal_emp) o el alias (salario)
*/
select nombre, cargo_emp as cargo, sal_emp as salario from empleados order by salario;
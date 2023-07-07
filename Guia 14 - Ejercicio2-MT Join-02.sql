/*2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún
producto asociado. */
SELECT f.nombre, p.nombre 
	FROM  producto p 
		RIGHT JOIN fabricante f 
			ON p.codigo_fabricante = f.codigo where p.nombre is null;
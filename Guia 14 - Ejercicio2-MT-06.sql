/*6. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard.
Utilizando el operador IN. */
 SELECT *
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo 
				WHERE f.nombre IN ('asus','Hewlett-Packard');
/*5. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio
mayor que $200. */
 SELECT *
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo 
				WHERE f.nombre= 'crucial' AND p.precio >=200;
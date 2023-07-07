/*3. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto
más barato. */
 SELECT p.nombre,p.precio, f.nombre  
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo 
				ORDER BY p.precio 
					ASC LIMIT 1;
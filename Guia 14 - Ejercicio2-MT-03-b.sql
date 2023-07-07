/*3. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto
más barato. 
b - subconsulta en el where*/
 SELECT p.nombre,p.precio, f.nombre  
	FROM producto p 
		INNER JOIN fabricante f
			ON p.codigo_fabricante = f.codigo 
				WHERE p.precio=(SELECT MIN(p.precio)FROM producto p) ;    
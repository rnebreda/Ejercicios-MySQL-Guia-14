/*14. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador
IN. */ 
SELECT * 
	FROM producto 
		WHERE codigo_fabricante 
			 IN (1,3,5);
/*1. Lista el nombre de todos los productos que hay en la tabla producto.*/
SELECT NOMBRE FROM PRODUCTO;

/*2. Lista los nombres y los precios de todos los productos de la tabla producto.*/
SELECT PRECIO, NOMBRE FROM PRODUCTO;

/*3. Lista todas las columnas de la tabla producto.*/
SELECT * FROM PRODUCTO;

/*4. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando
el valor del precio.*/
SELECT NOMBRE, ROUND(PRECIO) FROM PRODUCTO;

/*5. Lista el código de los fabricantes que tienen productos en la tabla producto.*/
SELECT CODIGO_FABRICANTE
FROM PRODUCTO;

/*6. Lista el código de los fabricantes que tienen productos en la tabla producto, sin mostrar
los repetidos.*/
SELECT distinct CODIGO_FABRICANTE
FROM PRODUCTO;

/*7. Lista los nombres de los fabricantes ordenados de forma ascendente.*/
SELECT NOMBRE FROM FABRICANTE
ORDER BY NOMBRE ASC;

/*8. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma
ascendente y en segundo lugar por el precio de forma descendente.*/
SELECT NOMBRE, PRECIO
FROM PRODUCTO
ORDER BY NOMBRE ASC, PRECIO DESC;

/*9. Devuelve una lista con las 5 primeras filas de la tabla fabricante.*/
SELECT * FROM FABRICANTE 
LIMIT 5;

/*Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas
ORDER BY y LIMIT)*/
SELECT NOMBRE, PRECIO
FROM PRODUCTO
ORDER BY PRECIO ASC
LIMIT 1;

/*11. Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER
BY y LIMIT)*/
SELECT NOMBRE, PRECIO
FROM PRODUCTO
ORDER BY PRECIO DESC
LIMIT 1;

/*12. Lista el nombre de los productos que tienen un precio menor o igual a $120.*/
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO <= 120;

/*13. Lista todos los productos que tengan un precio entre $60 y $200. Utilizando el operador
BETWEEN.*/
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO BETWEEN 60 AND 120 ;

/*14. Lista todos los productos donde el código de fabricante sea 1, 3 o 5. Utilizando el operador
IN.*/
SELECT NOMBRE, CODIGO_FABRICANTE
FROM PRODUCTO
WHERE CODIGO_FABRICANTE IN (1,3,5);

/*15. Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil
en el nombre.*/
SELECT NOMBRE
FROM PRODUCTO
WHERE NOMBRE LIKE '%PORTATIL%';

/*1. Devuelve una lista con el código del producto, nombre del producto, código del fabricante
y nombre del fabricante, de todos los productos de la base de datos.*/
SELECT P.CODIGO, P.NOMBRE, F.CODIGO, F.NOMBRE
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE;

/*2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos
los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por
orden alfabético.*/
SELECT P.PRECIO, P.NOMBRE, F.NOMBRE
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
ORDER BY F.NOMBRE;

/*3. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto
más barato.*/
SELECT P.PRECIO, P.NOMBRE, F.NOMBRE
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
ORDER BY P.PRECIO
LIMIT 1;

/*4. Devuelve una lista de todos los productos del fabricante Lenovo.*/
SELECT P.NOMBRE, F.NOMBRE
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
WHERE F.NOMBRE = 'LENOVO';

/*5. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio
mayor que $200.*/
SELECT P.NOMBRE, F.NOMBRE, P.PRECIO
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
WHERE F.NOMBRE = 'CRUCIAL' AND P.PRECIO > 200;

/*6. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard.
Utilizando el operador IN.*/
SELECT P.NOMBRE, F.NOMBRE, P.PRECIO
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
WHERE F.NOMBRE IN ('ASUS','Hewlett-Packard'); 

/*7. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos
los productos que tengan un precio mayor o igual a $180. Ordene el resultado en primer
lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden
ascendente)*/
SELECT P.NOMBRE, F.NOMBRE, P.PRECIO
FROM PRODUCTO P INNER JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE
WHERE P.PRECIO >= 180
ORDER BY P.PRECIO DESC, P.NOMBRE ASC; 

/*1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los
productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos
fabricantes que no tienen productos asociados.*/
SELECT P.NOMBRE, F.NOMBRE
FROM PRODUCTO P RIGHT JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE; 

/*2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún
producto asociado.*/
SELECT P.NOMBRE AS PRODUCTO, F.NOMBRE AS FABRICANTE
FROM PRODUCTO P RIGHT JOIN FABRICANTE F
ON F.CODIGO = P.CODIGO_FABRICANTE 
WHERE P.NOMBRE IS NULL;

/*1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).*/
SELECT NOMBRE
FROM PRODUCTO
WHERE CODIGO_FABRICANTE = (SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'LENOVO');

/*2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto
más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).*/
SELECT *
FROM PRODUCTO
WHERE PRECIO >= (SELECT MAX(PRECIO) FROM PRODUCTO WHERE CODIGO_FABRICANTE = (SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'LENOVO'));

/*3. Lista el nombre del producto más caro del fabricante Lenovo.*/
SELECT *
FROM PRODUCTO
WHERE PRECIO = (SELECT MAX(PRECIO) FROM PRODUCTO WHERE CODIGO_FABRICANTE = (SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'LENOVO'));

/*4. Lista todos los productos del fabricante Asus que tienen un precio superior al precio
medio de todos sus productos.*/
SELECT *
FROM PRODUCTO
WHERE PRECIO >= (SELECT AVG(PRECIO) FROM PRODUCTO 
WHERE CODIGO_FABRICANTE = (SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'ASUS'))
AND CODIGO_FABRICANTE = (SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'ASUS');

/*1. Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o
NOT IN).*/
SELECT NOMBRE
FROM FABRICANTE 
WHERE CODIGO IN (SELECT DISTINCT CODIGO_FABRICANTE FROM PRODUCTO);

/*2. Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando
IN o NOT IN).*/
SELECT NOMBRE
FROM FABRICANTE 
WHERE CODIGO NOT IN (SELECT DISTINCT CODIGO_FABRICANTE FROM PRODUCTO);

/*1. Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número
de productos que el fabricante Lenovo.*/
SELECT COUNT(NOMBRE), CODIGO_FABRICANTE
FROM PRODUCTO
GROUP BY CODIGO_FABRICANTE
HAVING COUNT(NOMBRE) = (SELECT COUNT(NOMBRE) FROM PRODUCTO WHERE CODIGO_FABRICANTE = 
(SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'LENOVO'));

SELECT COUNT(P.NOMBRE) AS CANTIDAD, F.NOMBRE
FROM PRODUCTO P INNER JOIN FABRICANTE F 
ON P.CODIGO_FABRICANTE = F.CODIGO
GROUP BY P.CODIGO_FABRICANTE
HAVING COUNT(P.NOMBRE) = (SELECT COUNT(NOMBRE) FROM PRODUCTO WHERE CODIGO_FABRICANTE = 
(SELECT CODIGO FROM FABRICANTE WHERE NOMBRE = 'LENOVO'));



/**/
SELECT * FROM FABRICANTE;
SELECT * FROM PRODUCTO;
/**/

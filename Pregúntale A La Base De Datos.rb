# Pregúntale A La Base De Datos

# Las bases de datos son una herramienta muy importante para una aplicación, en ellas
#  se encuentra una de los recursos más importantes de una aplicación (La información). 
#  Las bases de datos como ya vimos son un conjunto de tablas relacionadas que contienen 
#  información. Hay tablas que contienen más de mil millones de registros, por ejemplo Facebook a
#  2015 tiene más de mil cuatrocientos millones de usuarios.

# ¡Ahora piensa cuantos posts puede tener!

# Imagina tener que consultar una tabla de este tamaño y pedirle que te diga cuantos usuarios 
# tienen 20 años de edad.

# SQL es un lenguaje de manipulación de datos que nos permite hacer consultas o modificación de 
# datos dentro de una base de datos.

# SQL permite seleccionar y hacer consultas a través del statement SELECT. SELECT adicionalmente
#  contiene diferentes opciones (clauses) con las cuales refinas la consulta.

# SELECT
# ALL (*)
# FROM
# WHERE
# GROUP BY
# ORDER BY
# HAVING
# Recursos Externos
# 3wschools SQL Tutorial
# SQLite Tutorial
# Objetivos Académicos
# Familiarizarse y practicar consultas de SQL
# Comprender la relación entre tablas y sus datos
# Actividades
# Descargar Archivos

# Te vamos a dar una base de datos con el siguiente esquema:
# (Archivo en carpeta)

# Dentro del prompt de sqlite3 puedes correr el siguiente comando para conocer el esquema de 
# tu base de datos.

# $ sqlite3 <database_name>
# sqlite> .schema
# Realiza las siguientes Consultas
# Guarda cada una de las consultas en un archivo de texto.

# El total de ordenes del cliente con el ID 3
# El total de ordenes del cliente con el ContactName igual a 'Jim Wood'
# El total de ordenes del cliente con CompanyName igual a 'Slots Carpet'
# El total de ordenes de cada compañía ordenado de manera descendente
# El total de ordenes de cada compañía ordenado de manera ascendente
# La compañía con el mayor número de ordenes
# La suma total de piezas que fueron ordenadas por cada compañía.
# El monto total en pesos de la orden con ID 4
# El monto total en pesos de cada orden
# La consulta del inciso anterior pero únicamente mostrando aquellas ordenes que sean mayores a $1,000.00 pesos
# El total de piezas en cada orden
# Tus consultas deberían de arrojar los siguientes resultados:

# ******** estos asteriscos son para ocultar el nombre de la columna y no dar una pista de 
# como hacer la consulta. 

# Fíjate como cambia el nombre de esta columna dependiendo de 
# la consulta que hagas, averigua como personalizar este nombre como se muestra en la consulta número 4.

# # 1. Total orders from client 3
# # => 6

# # 2. Total orders from client Jim Wood
# # => 6

# # 3. Total orders from company Slots Carpet
# # => 2


# # 4. Total orders for each company ordered by the company with the most orders
# # =>
# CompanyName  TotalOrders
# -----------  ---------------------
# Floor Co.    6
# Sagebrush C  5
# Main Tile a  4
# Deerfield T  3
# Slots Carpe  2

# # 5. Total orders for each company ordered by the company with the least orders
# # =>
# CompanyName   ********
# ------------  ---------------------
# Slots Carpet  2
# Deerfield Ti  3
# Main Tile an  4
# Sagebrush Ca  5
# Floor Co.     6


# # 6. The company with the most orders
# # =>
# CompanyName  ********
# -----------  ---------------------
# Floor Co.    6


# # 7. Total items ordered by each company ordered by the company with the most items
# # =>
# CompanyName         ********
# ------------------  --------------------------
# Main Tile and Bath  940
# Sagebrush Carpet    740
# Floor Co.           670
# Deerfield Tile      340
# Slots Carpet        250


# # 8. Total amount of order 4
# # =>
# OrderID     ********
# ----------  ---------------------------------------------------
# 4           400.0


# # 9. Total amount for each order
# # =>
# OrderID     ********
# ----------  ---------------------------------------------------
# 1           48.0
# 2           1948.7
# 3           2395.9
# 4           400.0
# 5           3638.6
# 6           384.5
# 7           1321.5
# 8           1941.7
# 9           300.0
# 10          133.2
# 11          421.2
# 12          32.0
# 13          250.0
# 14          881.0
# 15          1344.1
# 16          207.5
# 17          1942.6
# 18          285.5
# 19          1626.5
# 20          166.0

# # 10. Total amount for each order having more than 1000
# # =>
# OrderID     ********
# ----------  ---------------------------------------------------
# 2           1948.7
# 3           2395.9
# 5           3638.6
# 7           1321.5
# 8           1941.7
# 15          1344.1
# 17          1942.6
# 19          1626.5


# # 11. Total items in each order
# # =>
# OrderID     ********
# ----------  --------------------------
# 1           90
# 2           330
# 3           240
# 4           80
# 5           380
# 6           140
# 7           210
# 8           190
# 9           60
# 10          100
# 11          180
# 12          60
# 13          50
# 14          140
# 15          110
# 16          70
# 17          200
# 18          120
# 19          130
# 20          60
# La base de datos que utilizamos fue modificada y obtenida de EssentialsSQL

##################################################################################################################################

#PASO 1
Dentro del prompt de sqlite3 puedes correr el siguiente comando para conocer el esquema 
de tu base de datos.

$ sqlite3 <database_name>
sqlite> .schema

CREATE TABLE Customers (
 CustomerID INTEGER PRIMARY KEY
,CompanyName VARCHAR(60)
,ContactName VARCHAR(40)
,ContactTitle VARCHAR(60)
,Address VARCHAR(60)
,City VARCHAR(60)
,State VARCHAR(2)
);
CREATE TABLE OrderDetails (
 OrderDetailID INTEGER PRIMARY KEY
,OrderID INTEGER
,ProductID INTEGER
,UnitPrice REAL
,Quantity INTEGER
);
CREATE TABLE Orders(
OrderID INTEGER PRIMARY KEY
,CustomerID INTEGER
,OrderDate VARCHAR(25)
,RequiredDate VARCHAR(25)
,ShippedDate VARCHAR(25)
);



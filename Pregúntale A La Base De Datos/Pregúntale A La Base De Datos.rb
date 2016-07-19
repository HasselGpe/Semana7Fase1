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

##############################################################################################################

sqlite> SELECT * FROM OrderDetails
   ...> ;
OrderDetailID  OrderID     ProductID   UnitPrice   Quantity  
-------------  ----------  ----------  ----------  ----------
1              1           1           1.1         30        
2              1           2           0.25        60        
3              2           3           5.0         80        
4              2           4           1.39        110       
5              2           5           9.97        140       
6              3           6           14.69       160       
7              3           1           1.1         30        
8              3           2           0.25        50        
9              4           3           5.0         80        
10             5           4           1.39        100       
11             5           5           9.97        130       
12             5           6           14.69       150       
13             6           1           1.1         20        
14             6           2           0.25        50        
15             6           3           5.0         70        
16             7           4           1.39        90        
17             7           5           9.97        120       
18             8           6           14.69       130       
19             8           1           1.1         20        
20             8           2           0.25        40        
21             9           3           5.0         60        
22             10          4           1.39        80        
23             10          1           1.1         20        
24             11          2           0.25        40        
25             11          3           5.0         60        
26             11          4           1.39        80        
27             12          1           1.1         20        
28             12          2           0.25        40        
29             13          3           5.0         50        
30             14          4           1.39        60        
31             14          5           9.97        80        
32             15          6           14.69       90        
33             15          1           1.1         20        
34             16          2           0.25        30        
35             16          3           5.0         40        
36             17          4           1.39        50        
37             17          5           9.97        70        
38             17          6           14.69       80        
39             18          1           1.1         10        
40             18          2           0.25        20        
41             18          3           5.0         40        
42             18          4           1.39        50        
43             19          5           9.97        60        
44             19          6           14.69       70        
45             20          1           1.1         10        
46             20          2           0.25        20        
47             20          3           5.0         30   


##############################################################################################################

sqlite> SELECT * FROM Customers
   ...> ;
CustomerID  CompanyName     ContactName     ContactTitle  Address             City        State     
----------  --------------  --------------  ------------  ------------------  ----------  ----------
1           Deerfield Tile  Dick Terrcotta  Owner         450 Village Street  Deerfield   IL        
2           Sagebrush Carp  Barbara Berber  Director of   10 Industrial Driv  El Paso     TX        
3           Floor Co.       Jim Wood        Installer     34218 Private Lane  Monclair    NJ        
4           Main Tile and   Toni Faucet     Owner         Suite 23, Henry Bu  Orlando     FL        
5           Slots Carpet    Jack Diamond I  Purchaser     3024 Jackpot Drive  Las Vegas   NV  

##############################################################################################################

sqlite> SELECT * FROM Orders
   ...> ;
OrderID     CustomerID  OrderDate   RequiredDate  ShippedDate
----------  ----------  ----------  ------------  -----------
1           1           2012-01-04  2012-01-09    2012-01-05 
2           2           2012-01-27  2012-02-01    2012-01-28 
3           4           2012-02-19  2012-02-24    2012-02-23 
4           2           2012-03-13  2012-03-18    2012-03-14 
5           4           2012-04-05  2012-04-10    2012-04-06 
6           3           2012-04-28  2012-05-03    2012-04-29 
7           4           2012-05-21  2012-05-26    2012-05-22 
8           1           2012-06-13  2012-06-18    2012-06-14 
9           2           2012-07-06  2012-07-11    2012-07-07 
10          3           2012-07-29  2012-08-03    2012-08-04 
11          3           2012-08-21  2012-08-26    2012-08-22 
12          1           2012-09-13  2012-09-18    2012-09-14 
13          5           2012-10-06  2012-10-11    2012-10-07 
14          2           2012-10-29  2012-11-03    2012-10-30 
15          4           2012-11-21  2012-11-26    2012-11-22 
16          3           2012-12-14  2012-12-19    2012-12-15 
17          5           2013-01-06  2013-01-11    2013-01-07 
18          3           2013-01-29  2013-02-03    2013-01-30 
19          2           2013-02-21  2013-02-26    2013-03-01 
20          3           2013-03-16  2013-03-21    2013-03-17 

######################################################################

#RESULTADOS ARROGADOS 

# 1ª El total de ordenes del cliente con el ID 3
# 1. Total orders from client 3
#PRIMERA MANERA 
sqlite> SELECT CustomerID, COUNT(Orders.OrderID) AS NumbersOfOrders
   ...> FROM Orders 
   ...> WHERE CustomerID = '3';

CustomerID  NumbersOfOrders
----------  ---------------
3           6              

#SEGUNDA MANERA
sqlite> SELECT COUNT(Orders.OrderID) AS NumbersOfOrders
   ...> FROM Orders
   ...> WHERE CustomerID = '3';

NumbersOfOrders
---------------
6   

#TERCERA MANERA
sqlite> SELECT COUNT(Orders.OrderID) AS Total_Orders_From_Client_3
   ...> FROM Orders
   ...> WHERE CustomerID = '3';

Total_Orders_From_Client_3
--------------------------
6 

######################################################################
#2ª El total de ordenes del cliente con el ContactName igual a 'Jim Wood'
# 2. Total orders from client Jim Wood

sqlite> SELECT COUNT(OrderID) AS Total_orders_from_client_jim_wood
   ...> FROM Orders
   ...> INNER JOIN Customers
   ...> ON Orders.CustomerID = Customers.CustomerID
   ...> WHERE ContactName = 'Jim Wood';

Total_orders_from_client_jim_wood
---------------------------------
6 

######################################################################
#3ª El total de ordenes del cliente con CompanyName igual a 'Slots Carpet'
# 3. Total orders from company Slots Carpet
sqlite> SELECT COUNT(OrderID) AS Total_orders_from_Company_Slots_Carpet
   ...> FROM Orders
   ...> INNER JOIN Customers
   ...> ON Orders.CustomerID = Customers.CustomerID
   ...> WHERE CompanyName = 'Slots Carpet';

Total_orders_from_Company_Slots_Carpet
--------------------------------------
2 

######################################################################
#4º El total de ordenes de cada compañía ordenado de manera descendente
# 4. Total orders for each company ordered by the company with the most orders
sqlite> SELECT CompanyName,COUNT(OrderID) AS Total_orders
   ...> FROM Orders
   ...> INNER JOIN Customers
   ...> ON Orders.CustomerID = Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY CompanyName DESC;

CompanyName   Total_orders
------------  ------------
Slots Carpet  2           
Sagebrush Ca  5           
Main Tile an  4           
Floor Co.     6           
Deerfield Ti  3 

######################################################################
#5º El total de ordenes de cada compañía ordenado de manera ascendente
# 5. Total orders for each company ordered by the company with the least orders
sqlite> SELECT CompanyName,COUNT(OrderID) AS Total_orders
   ...> FROM Orders
   ...> INNER JOIN Customers
   ...> ON Orders.CustomerID = Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY CompanyName ASC;

CompanyName     Total_orders
--------------  ------------
Deerfield Tile  3           
Floor Co.       6           
Main Tile and   4           
Sagebrush Carp  5           
Slots Carpet    2 
######################################################################
#6º La compañía con el mayor número de ordenes
# 6. The company with the most orders
sqlite> SELECT CompanyName, COUNT(OrderID) AS Pedidos
   ...> FROM Orders
   ...> INNER JOIN Customers
   ...> On Orders.CustomerID = Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY Pedidos DESC
   ...> LIMIT 1;#If you want just the customer with most orders, you have to limit the number of records to the first one.For that, you have to tell what DBMS you use.(LIMIT 1)

CompanyName  Pedidos   
-----------  ----------
Floor Co.    6  

######################################################################
#7ª La suma total de piezas que fueron ordenadas por cada compañía.
# 7. Total items ordered by each company ordered by the company with the most items
sqlite> SELECT CompanyName, SUM(Quantity) AS Piezas
   ...> FROM Orders
   ...> INNER JOIN OrderDetails
   ...> On Orders.OrderID = OrderDetails.OrderID
   ...> INNER JOIN Customers
   ...> On Orders.CustomerID = Customers.CustomerID
   ...> GROUP BY CompanyName
   ...> ORDER BY Piezas DESC;

CompanyName         Piezas    
------------------  ----------
Main Tile and Bath  940       
Sagebrush Carpet    740       
Floor Co.           670       
Deerfield Tile      340       
Slots Carpet        250 

######################################################################
#9º El monto total en pesos de la orden con ID 4
sqlite> SELECT OrderID, UnitPrice * Quantity AS Costo_total
   ...> FROM OrderDetails
   ...> WHERE OrderID = 4;

OrderID     Costo_total
----------  -----------
4           400.0  

######################################################################
#10º El monto total en pesos de cada orden
sqlite> SELECT OrderID, SUM(UnitPrice *Quantity) AS Total
   ...> FROM OrderDetails
   ...> GROUP BY OrderID;

OrderID     Total     
----------  ----------
1           48.0      
2           1948.7    
3           2395.9    
4           400.0     
5           3638.6    
6           384.5     
7           1321.5    
8           1941.7    
9           300.0     
10          133.2     
11          421.2     
12          32.0      
13          250.0     
14          881.0     
15          1344.1    
16          207.5     
17          1942.6    
18          285.5     
19          1626.5    
20          166.0  

######################################################################
#11º La consulta del inciso anterior pero únicamente mostrando aquellas ordenes que sean mayores
# 11. Total items in each order
# a $1,000.00 pesos

sqlite> SELECT OrderID, SUM(UnitPrice *Quantity) AS Total
   ...> FROM OrderDetails
   ...> GROUP BY OrderID
   ...> HAVING SUM (UnitPrice * Quantity) > 1000.00
   ...> ;
OrderID     Total     
----------  ----------
2           1948.7    
3           2395.9    
5           3638.6    
7           1321.5    
8           1941.7    
15          1344.1    
17          1942.6    
19          1626.5    

######################################################################
#12º El total de piezas en cada orden
sqlite> SELECT OrderID, SUM(Quantity) 
   ...> FROM OrderDetails
   ...> GROUP BY OrderID
   ...> ;
   
OrderID     SUM(Quantity)
----------  -------------
1           90           
2           330          
3           240          
4           80           
5           380          
6           140          
7           210          
8           190          
9           60           
10          100          
11          180          
12          60           
13          50           
14          140          
15          110          
16          70           
17          200          
18          120          
19          130          
20          60 




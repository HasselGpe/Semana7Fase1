# Sitio De Recetas De Comida

# En este ejercicio vamos a diseñar una base de datos con varias relaciones y restricciones.
#  Esta base de datos será para un sitio de recetas de comida.

# Elaborar acertadamente el diseño de una base de datos desde el principio de un proyecto es
#  muy importante. Entre más complicada tu base de datos más difícil será consultarla y esto 
#  perjudicará al desempeño de tu aplicación.

# SQL Designer
# Objetivos Académicos
# Modelar una base de datos basada en requerimientos de un cliente
# Practicar el diseño de bases de datos con varias relaciones y restricciones
# Actividades
# Diseña la base de datos de un sitio de recetas siguiendo los siguientes requerimientos.

# Usa SQL Designer para diseñar los siguientes esquemas. Al final de cada paso guarda el XML de 
# tu esquema (Botón Load/Save -> Save XML) y haz una captura de pantalla.

# Paso 1: Diseño básico
# Diseña el esquema de las siguientes tablas en SQL Designer.

# Un Chef tiene muchos Meals
# Un Meal pertenece a un solo Chef
# Un Meal tiene muchos Ingredients
# Un Ingredient puede estar en muchos Meals
# Para cada Ingredient en un Meal, necesitamos saber la cantidad (quantity) y la unidad de 
# edición (measurement). La unidad de medición puede ser gramos, litros, cucharadas, tazas, etc. 
# Piensa cuidadosamente en que tabla viven estos datos.


# Paso 2: El cliente cambió de opinión
# Ahora el cliente se ha acercado con nuevos requerimientos para el sitio, seguramente estos 
# requerimientos modificarán la estructura de tu base de datos.

# Estos son los nuevos requerimientos:

# Un Menu tiene muchos Meals
# Un Meal puede estar en muchos Menus
# Un Chef tiene muchos Meals
# Un Meal pertenece a un solo Chef
# Un Meal tiene muchos Ingredients
# Un Ingredient puede estar en muchos Meals
# Un Meal tiene un Category. Las categorías especifican si el meal es una sopa, entrada, plato 
# fuerte, postre, etc.
# Un Category tiene muchos Meals


# Paso 3: Constraints
# ¿Cómo podríamos restringir que un Menu tenga máximo un Meal de cada Category?

# Las bases de datos muchas veces no cuentan con las características para poder soportar ciertas
#  restricciones. En estos casos, podemos escribir código de Ruby que valide la información antes 
#  de guardarla en la base de datos.

# Piensa en las ventajas y desventajas de esta solución.

# La restricción anterior si puede crearse a nivel de base de datos.


# Paso 4: Múltiples Categories
# Algunos Meals pudieran clasificarse en más de un Category.

# ¿Cómo afecta esta modificación en el esquema de tu base de datos? ¿Qué es necesario cambiar
#  para permitir a un Meal tener más de un Category?



 ############################################################################################################################################################

<?xml version="1.0" encoding="utf-8" ?>
<!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
<!-- Active URL: http://ondras.zarovi.cz/sql/demo/ -->
<sql>
<datatypes db="mysql">
  <group label="Numeric" color="rgb(238,238,170)">
    <type label="Integer" length="0" sql="INTEGER" quote=""/>
    <type label="TINYINT" length="0" sql="TINYINT" quote=""/>
    <type label="SMALLINT" length="0" sql="SMALLINT" quote=""/>
    <type label="MEDIUMINT" length="0" sql="MEDIUMINT" quote=""/>
    <type label="INT" length="0" sql="INT" quote=""/>
    <type label="BIGINT" length="0" sql="BIGINT" quote=""/>
    <type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
    <type label="Single precision" length="0" sql="FLOAT" quote=""/>
    <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
  </group>

  <group label="Character" color="rgb(255,200,200)">
    <type label="Char" length="1" sql="CHAR" quote="'"/>
    <type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
    <type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
    <type label="Binary" length="1" sql="BINARY" quote="'"/>
    <type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
    <type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
  </group>

  <group label="Date &amp; Time" color="rgb(200,255,200)">
    <type label="Date" length="0" sql="DATE" quote="'"/>
    <type label="Time" length="0" sql="TIME" quote="'"/>
    <type label="Datetime" length="0" sql="DATETIME" quote="'"/>
    <type label="Year" length="0" sql="YEAR" quote=""/>
    <type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
  </group>
  
  <group label="Miscellaneous" color="rgb(200,200,255)">
    <type label="ENUM" length="1" sql="ENUM" quote=""/>
    <type label="SET" length="1" sql="SET" quote=""/>
    <type label="Bit" length="0" sql="bit" quote=""/>
  </group>
</datatypes><table x="20" y="176" name="Chef's">
<row name="id_Chef" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="First_name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Last_name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Birtday" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Email" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Phone" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Speciality" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_Chef</part>
</key>
</table>
<table x="190" y="80" name="Meals">
<row name="id_Meals" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_chef" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Chef's" row="id_Chef" />
</row>
<key type="PRIMARY" name="">
<part>id_Meals</part>
</key>
</table>
<table x="359" y="165" name="Meal_Ingredient">
<row name="id_meal_ingredient" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_meal" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Meals" row="id_Meals" />
</row>
<row name="id_ingredient" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Ingredients" row="id_ingredient" />
</row>
<row name="quantity" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="measurement" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_meal_ingredient</part>
</key>
</table>
<table x="593" y="160" name="Ingredients">
<row name="id_ingredient" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="ingredient" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_ingredient</part>
</key>
</table>
<table x="7" y="532" name="Chef's">
<row name="id_Chef" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="First_name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Last_name" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Birtday" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Email" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Phone" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Speciality " null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_Chef</part>
</key>
</table>
<table x="261" y="415" name="Meals">
<row name="id_Meal" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_chef" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Chef's" row="id_Chef" />
</row>
<row name="id_category" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Categories" row="id_category" />
</row>
<row name="flavor" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_Meal</part>
</key>
</table>
<table x="554" y="351" name="Meal_Ingredient">
<row name="id_meal_ingredient" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="id_Meal" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Meals" row="id_Meal" />
</row>
<row name="id_ingrediente" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Ingredients" row="id_ingredients" />
</row>
<key type="PRIMARY" name="">
<part>id_meal_ingredient</part>
</key>
</table>
<table x="569" y="471" name="meal_menu">
<row name="id" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Id_meal" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Meals" row="id_Meal" />
</row>
<row name="id_menu" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default><relation table="Menus" row="id_Menus" />
</row>
<key type="PRIMARY" name="">
<part>id</part>
</key>
</table>
<table x="580" y="672" name="Categories">
<row name="id_category" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="category" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_category</part>
</key>
</table>
<table x="840" y="433" name="Ingredients">
<row name="id_ingredients" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="ingredients" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_ingredients</part>
</key>
</table>
<table x="861" y="567" name="Menus">
<row name="id_Menus" null="1" autoincrement="1">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Types" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<row name="Restaurant" null="1" autoincrement="0">
<datatype>INTEGER</datatype>
<default>NULL</default></row>
<key type="PRIMARY" name="">
<part>id_Menus</part>
</key>
</table>
</sql>

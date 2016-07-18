Sitio De Recetas De Comida

En este ejercicio vamos a diseñar una base de datos con varias relaciones y restricciones.
 Esta base de datos será para un sitio de recetas de comida.

Elaborar acertadamente el diseño de una base de datos desde el principio de un proyecto es
 muy importante. Entre más complicada tu base de datos más difícil será consultarla y esto 
 perjudicará al desempeño de tu aplicación.

SQL Designer
Objetivos Académicos
Modelar una base de datos basada en requerimientos de un cliente
Practicar el diseño de bases de datos con varias relaciones y restricciones
Actividades
Diseña la base de datos de un sitio de recetas siguiendo los siguientes requerimientos.

Usa SQL Designer para diseñar los siguientes esquemas. Al final de cada paso guarda el XML de 
tu esquema (Botón Load/Save -> Save XML) y haz una captura de pantalla.

Paso 1: Diseño básico
Diseña el esquema de las siguientes tablas en SQL Designer.

Un Chef tiene muchos Meals
Un Meal pertenece a un solo Chef
Un Meal tiene muchos Ingredients
Un Ingredient puede estar en muchos Meals
Para cada Ingredient en un Meal, necesitamos saber la cantidad (quantity) y la unidad de 
edición (measurement). La unidad de medición puede ser gramos, litros, cucharadas, tazas, etc. 
Piensa cuidadosamente en que tabla viven estos datos.


Paso 2: El cliente cambió de opinión
Ahora el cliente se ha acercado con nuevos requerimientos para el sitio, seguramente estos 
requerimientos modificarán la estructura de tu base de datos.

Estos son los nuevos requerimientos:

Un Menu tiene muchos Meals
Un Meal puede estar en muchos Menus
Un Chef tiene muchos Meals
Un Meal pertenece a un solo Chef
Un Meal tiene muchos Ingredients
Un Ingredient puede estar en muchos Meals
Un Meal tiene un Category. Las categorías especifican si el meal es una sopa, entrada, plato 
fuerte, postre, etc.
Un Category tiene muchos Meals


Paso 3: Constraints
¿Cómo podríamos restringir que un Menu tenga máximo un Meal de cada Category?

Las bases de datos muchas veces no cuentan con las características para poder soportar ciertas
 restricciones. En estos casos, podemos escribir código de Ruby que valide la información antes 
 de guardarla en la base de datos.

Piensa en las ventajas y desventajas de esta solución.

La restricción anterior si puede crearse a nivel de base de datos.


Paso 4: Múltiples Categories
Algunos Meals pudieran clasificarse en más de un Category.

¿Cómo afecta esta modificación en el esquema de tu base de datos? ¿Qué es necesario cambiar
 para permitir a un Meal tener más de un Category?



 ############################################################################################################################################################
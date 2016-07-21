# Esquema De Usuarios Con Active Record

# En este ejercicio vamos a modelar una aplicación con usuarios:

# +------------+
# | usuarios   |
# +------------+
# | id         |
# | first_name |
# | last_name  |
# | gender     |
# | birthday   |
# | email      |
# | phone      |
# +------------+
# Este reto te permitirá familiarizarte con los conceptos básicos del ORM por default de Rails 
# llamado ActiveRecord.

# Ten en cuenta que no todas las funciones que tiene ActiveRecord en Rails están disponibles en 
# este proyecto.

# Te recomendamos empezar leyendo la guía 'Active Record Basics'.

# Las siguientes guías también te serán útiles para completar este reto:

# Migrations
# Validations
# Objetivos Académicos
# Familiarizarse con un ORM
# Conocer como modificar una base de datos
# Actividades
# Descargar Archivos

# Configurar el proyecto
# Instala las dependencias con el comando bundle
# Crea la base de datos con el comando rake db:create
# Migraciones
# Las migraciones son archivos que sirven para crear tablas y modificarlas en la base de datos.

# Utiliza el siguiente código y agrega lo que le falte para crear la tabla de usuarios como 
# aparece al inicio del ejercicio.

# El siguiente link puede ayudarte con la sintaxis:

# Railsguides Migration Overview
# class CreateUsers < ActiveRecord::Migration
#   def change
#     create_table :users do |t|
#       t.string :first_name
#       # Agrega aquí las columnas que faltan

#       t.timestamps
#     end
#   end
# end
# Una vez que definas el diseño de tu tabla deberás correr la migración con el siguiente comando.
#  Y también correremos el archivo seed para llenar de información la tabla.

# $ rake db:migrate
# $ rake db:seed
# Para comprobar que hiciste bien tu migración utiliza el siguiente comando.

# $ rspec spec/migrate_create_table_spec.rb
# Todas las pruebas deberán pasar. Si tienes un error intenta solucionarlo si no puedes busca a 
# un instructor.

# Si quieres jugar con el proyecto desde la consola de Ruby utiliza el siguiente comando y en la 
# guía de ActiveRecord busca que métodos puedes utilizar.

# $ rake console
# El Modelo User
# El siguiente archivo contiene la clase User: app/models/user.rb.

# ActiveRecord se encarga de crearte readers y writers para cada uno de las columnas que 
# definiste.WOW!!!

# Crear métodos personalizados:

# Crea un método llamado name que regrese el nombre completo del usuario.
# Crea un método llamado age que regrese la edad en años del usuario.
# Corre las pruebas:

# $ rspec spec/user_spec.rb -e "#name and #age"
# Validaciones

# Entra al siguiente link y aprende como ActiveRecord crea validaciones para los campos.ActiveRecord 
# Validations

# Crea las siguientes validaciones en tu modelo Usuario:

# La dirección de email deberá contener una @ y al menos un . , con al menos un caracter antes de 
# la @, un caracter entre la @ y el primer . y al menos dos caracteres después del . final.
# Dos usuarios no deberán tener el mismo email, este debe de ser único.
# Los usuarios deberán de ser mayores de edad.
# Corre las pruebas:

# $ rspec spec/user_spec.rb -e "validations"
# Validaciones Avanzadas

# Crea una validación personalizada donde el teléfono no pueda tener menos de 10 dígitos sin 
# contar caracteres no numéricos.

# Todas las pruebas deben pasar.

# $ rspec spec/user_spec.rb -e "advanced validations"
#####################################################################################################################################################################

# CodeaCamp03s-Mac-mini:Esquema De Usuarios Con Active Record codea_mac_03$ cd user_schema
# CodeaCamp03s-Mac-mini:user_schema codea_mac_03$  bundle
# Using i18n 0.7.0
# Using json 1.8.2
# Using minitest 5.5.1
# Using thread_safe 0.3.4
# Using builder 3.2.2
# Using arel 6.0.0
# Using diff-lcs 1.2.5
# Using rspec-support 3.2.2
# Using bundler 1.11.2
# Using tzinfo 1.2.2
# Using rspec-core 3.2.3
# Using rspec-expectations 3.2.1
# Using rspec-mocks 3.2.1
# Using activesupport 4.2.0
# Using rspec 3.2.0
# Using activemodel 4.2.0
# Using activerecord 4.2.0
# Bundle complete! 2 Gemfile dependencies, 17 gems now installed.
# Use `bundle show [gemname]` to see where a bundled gem is installed.
# CodeaCamp03s-Mac-mini:user_schema codea_mac_03$ rake db:create
# touch db/users.sqlite3
# CodeaCamp03s-Mac-mini:user_schema codea_mac_03$ rake db:migrate
# DEPRECATION WARNING: Directly inheriting from ActiveRecord::Migration is deprecated. Please specify the Rails release the migration was written for:

#   class CreateUsers < ActiveRecord::Migration[4.2] (called from block in <top (required)> at /Users/codea_mac_03/Desktop/Semana 7/Esquema De Usuarios Con Active Record/user_schema/Rakefile:22)
# == 20121011144238 CreateUsers: migrating ======================================
# -- create_table(:users, {})
#    -> 0.0014s
# == 20121011144238 CreateUsers: migrated (0.0015s) =============================




require_relative 'app'

def assert(truthy)
  raise "Tests failed" unless truthy
  p true if truthy
end

chef = Chef.find(1)

# Este es un ejemplo de test ya que los nombres de los chefs son aleatorios, este test muy probablemente fallará
assert chef[:first_name] == 'Alva'
assert chef[:last_name] == "O'Keefe"
 

#---------- Metodo all clase Chef

p Chef.all

puts "finished"

#---------- Metodo all clase Meal

p Meal.all


puts "finished"
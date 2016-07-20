
class Chef < MiniActiveRecord::Model

  def self.find(pk)
    self.where('id = ?', pk).first
  end

  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,
                          :birthday, :created_at, :updated_at]

  

  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each do |meal|
      meal.chef = self
    end

    meals
  end


end

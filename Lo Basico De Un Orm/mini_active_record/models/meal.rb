class Meal < MiniActiveRecord::Model


  def self.find(pk)
    self.where('id = ?', pk).first
  end

  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]


  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end


  
end
class CosmeticIngredient < ActiveRecord::Base
  belongs_to :cosmetics
  belongs_to :ingredients

  def self.ingredient_id
    self.pluck(:ingredient_id)
  end
end

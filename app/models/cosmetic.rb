class Cosmetic < ActiveRecord::Base
  TOILET_WATER_ID = 65

  belongs_to :brand

  has_many :stores, dependent: :destroy
  has_many :cosmetic_ingredients, dependent: :destroy
  has_many :similarities, dependent: :destroy
  has_many :ingredients, through: :cosmetic_ingredients
  
  scope :joins_get_all_columns, -> (*tables) { joins(*tables).select("*") }
  scope :toilet_water, -> { where(arel_table[:category_id].eq(TOILET_WATER_ID)) }

  def brand_name
    Brand.find_by(id: brand_id).name
  end

  def category_name
    Category.find_by(id: category_id).name
  end

  def ingredients
    cosmetic_ingredient = CosmeticIngredient.where(cosmetic_id: id).order(:ingredient_order)
    Ingredient.where(id: cosmetic_ingredient.ingredient_id)
  end

  def store_price
    Store.find_by(cosmetic_id: self.id).price
  end

  def similar_cosmetics
    Cosmetic
      .joins_get_all_columns(:similarities, :stores)
      .merge(Similarity.where(against_cosmetic_id: id))
      .order("value DESC")
  end
end

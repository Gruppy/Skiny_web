class Cosmetic < ActiveRecord::Base
  has_many :cosmetic_ingredients, dependent: :destroy
  has_many :similarities, dependent: :destroy
  has_many :ingredients, through: :cosmetic_ingredients
end

class CosmeticsController < ApplicationController
  def index
    @category = Category.find_by(id: params[:category])
    @brand = Brand.find_by(id: params[:brand])

    @cosmetics = Cosmetic.where(category_id: @category.id, brand_id: @brand.id)
  end

  def show
    @cosmetic = Cosmetic.find_by(id: params[:id])
    @category = Category.find_by(id: @cosmetic.category_id)
    @brand = Brand.find_by(id: @cosmetic.brand_id)

    @similar_cosmetics = []
    @cosmetic.similarities.order("value DESC").each do |similarity|
      similar_cosmetic = {}
      similar_cosmetic[:cosmetic] = Cosmetic.find_by(id: similarity.against_cosmetic_id)
      similar_cosmetic[:similarity] = similarity
      @similar_cosmetics << similar_cosmetic
    end

    @ingredients = []
    @cosmetic.cosmetic_ingredients.order(:ingredient_order).each do |cosmetic_ingredient|
      @ingredients << Ingredient.find_by(id: cosmetic_ingredient.ingredient_id)
    end
  end
end

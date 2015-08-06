class CosmeticsController < ApplicationController
  def index
    @cosmetics = Cosmetic.toilet_water
  end

  def show
    @cosmetic = Cosmetic.find_by(id: params[:id])
    @similar_cosmetics = @cosmetic.similar_cosmetics.limit(5)
    @ingredients = @cosmetic.ingredients
  end
end

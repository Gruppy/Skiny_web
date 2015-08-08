class CosmeticsController < ApplicationController
  def index
    @search = Cosmetic.toilet_water.search(params[:q])
    @cosmetics = @search.result
  end

  def show
    @cosmetic = Cosmetic.find_by(id: params[:id])
    @similar_cosmetics = @cosmetic.similar_cosmetics.limit(5)
    @ingredients = @cosmetic.ingredients
  end
end

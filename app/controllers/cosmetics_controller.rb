class CosmeticsController < ApplicationController
  def index
    @search = Cosmetic.toilet_water.search(params[:q])
    if params[:q].present? && params[:q][:name_or_brand_name_cont].present?
      @cosmetics = @search.result
    end
  end

  def show
    @cosmetic = Cosmetic.find_by(id: params[:id])
    @similar_cosmetics = @cosmetic.similar_cosmetics.limit(5)
    @ingredients = @cosmetic.ingredients
  end
end

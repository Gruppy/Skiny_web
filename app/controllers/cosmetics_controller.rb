class CosmeticsController < ApplicationController
  def index
    @category = Category.find_by(slug: params[:category])
    @brand = Brand.find_by(slug: params[:brand])

    @cosmetics = Cosmetic.where(category_id: @category.id, brand_id: @brand.id)
  end

  def show
    @cosmetic = Cosmetic.find_by(id: params[:id])
    @category = Category.find_by(id: @cosmetic.category_id)
    @brand = Brand.find_by(id: @cosmetic.brand_id)
  end
end

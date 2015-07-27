class CosmeticsController < ApplicationController
  def index
    @category = Category.find_by(slug: params[:category])
    @brand = Brand.find_by(slug: params[:brand])

    @cosmetics = Cosmetic.where(category_id: @category.id, brand_id: @brand.id)
  end
end

class BrandsController < ApplicationController
  def index
    @category = Category.find_by(slug: params[:category])
    @brands = Brand.all
  end
end

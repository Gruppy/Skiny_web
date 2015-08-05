class BrandsController < ApplicationController
  def index
    @category = Category.find_by(id: params[:category])
    @brands = Brand.all
  end
end

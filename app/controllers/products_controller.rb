class ProductsController < ApplicationController

  def display_all
    render json: Product.all
  end

end

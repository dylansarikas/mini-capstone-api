class ProductsController < ApplicationController

  def display_all
    render json: Product.all
  end

  def display_first
    render json: Product.first
  end

  def display_last 
    render json: Product.last
  end

end

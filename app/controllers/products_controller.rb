class ProductsController < ApplicationController

  def display_all
    products = Product.all
    render json: products.as_json
    #render json: Product.all
  end

  def display_first
    product = Product.first
    render json: product.as_json
    #render json: Product.first
  end

  def third_product
    product = Product.find_by(id: 3)
    render json: product.as_json
  end

  def display_last 
    product = Product.last
    render json: product.as_json
    #render json: Product.last
  end

end

class ProductsController < ApplicationController

###I love you old code

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

  def choose_product
    number = params[:id_number].to_i
    product = Product.find_by(id: number)
    render json: product.as_json
  end

  def display_last 
    product = Product.last
    render json: product.as_json
    #render json: Product.last
  end

  def index
    product = Product.all
    render json: product.as_json
  end

  def create
    product1 = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url]
    )
    product1.save
    render json:product1.as_json
  end


  def show
    number = params[:id].to_i
    product = Product.find_by(id: number)
    render json: product.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def update
    number = params[:id].to_i
    product1 = Product.find_by(id: number)
    product1.description = params[:description] || product1.description
    product1.name = params[:name] || product1.name
    product1.image_url = params[:image_url] || product1.image_url
    product1.price = params[:price] || product1.price
    product1.save
    render json: product1.as_json
  end

  def destroy
    product1 = Product.find(params[:id])
    product1.destroy
    render json:{message: "The product #{product1.name} was successfully obliterated! (destroyed)"}
  end

end

class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    order1 = current_user.orders
    render json: order1
  end

  def create
    product1 = Product.find(params[:product_id])
    subtotal = product1.price * params[:quantity]
    tax = subtotal * 0.1
    total = subtotal + tax
    order1 = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    if order1.save
      render json: order1
    else 
      render json: {errors: order1.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    order1 = current_user.orders.find(params[:id])
    if order1
      render json: order1
    else
      render json: {}, status: :unauthorized
    end
  end

end

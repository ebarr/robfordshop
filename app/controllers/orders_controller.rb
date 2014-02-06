class OrdersController < ApplicationController
  def new

  end

  def show
    @order = Order.find(params[:order_id])

  end

  def create
    @order = Order.new
    @order.save
  end

  def destroy

  end

  def update
    @order = Order.find(params[:order_id])


  end

end

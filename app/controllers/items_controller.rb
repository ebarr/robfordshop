class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(id: params[:id])
  end

  def new
  end

  def create
    @item = Item.new
    @item.title = params[:title]
    @item.price = params[:price]
    @item.image = params[:image]

    if @item.save
      redirect_to items_url, notice: "Item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find_by(id: params[:id])
  end

  def update
    @item = Item.find_by(id: params[:id])
    @item.title = params[:title]
    @item.price = params[:price]
    @item.image = params[:image]
    @item.order_id = params[:order_id]

    if @item.save
      redirect_to items_url, notice: "Added to your cart."
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy

    redirect_to items_url, notice: "Item deleted."
  end
end

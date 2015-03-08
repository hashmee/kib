class ItemsController < ApplicationController
  before_action :get_item, only: [:show,:edit,:update,:destroy]
  def index
   @items = current_user.items
  end
  def new
    @item = current_user.items.new
  end
  def create
    @item = current_user.items.new(item_params)
    if @bill.save
      redirect_to items_path, notice: "Items added"
    else
      render "new"
  end
  def show
  end
  def update
    if @item.update_attributes(item_params)
      redirect_to items_path, notice: "Item Updated"
    else
      render "edit"
  end
  def destroy
    @item.destroy
    redirect_to items_path, notice: "Items destroyed"

  end

  private
  def get_item
    @item = current_user.items.find(params[:id])
  end
  def item_params
    params.require (:item).permit(:counter, :article, :color, :remarks, :user_id)
  end

end

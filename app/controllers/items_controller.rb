class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params) 
    @item.user = current_user
    if @item.save
      flash[:notice] = "L'item a bien été créé"
      redirect_to items_path
    else
      render :new
      puts errors
    end

  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def item_params
    params.require(:item).permit(:title, :description, :price, :image_url)
  end

end

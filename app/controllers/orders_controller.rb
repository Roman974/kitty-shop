class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params) 
    @order.user = current_user
    if @order.save
      flash[:notice] = "La commade a bien été passée"
      redirect_to orders_path
    else
      render :new
      puts errors
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to items_path
  end

  private 

  def order_params
    params.require(:order).permit(:cart_id)
  end


end

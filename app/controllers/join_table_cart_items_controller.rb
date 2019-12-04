class JoinTableCartItemsController < ApplicationController
  def create
    @cart = Cart.find_by(user:current_user)
    @cart.add_item(@cart, params[:item])

    if @cart.save
      flash[:success] = "Cet article a bien été ajouté à votre panier."
      redirect_to items_path
    else

      flash[:error] = 'Le produit n\'a pas été ajouté à votre panier'
      redirect_to items_path

    end
  end
end

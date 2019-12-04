class Cart < ApplicationRecord
  belongs_to :user
  has_many :join_table_cart_items
  has_many :items, through: :join_table_cart_items

  def add_item(cart_id, item_id) 
     #Cherche item dans la table join_table_cart_items
    already_exist = join_table_cart_items.find_by(item_id: item_id, cart_id: cart_id) 
    if already_exist
    else
      #Si pas présent rajoute l'item dans la table join_table_cart_items
      join_table_cart_items.create(item_id: item_id, cart_id: cart_id)
    end
  end
end

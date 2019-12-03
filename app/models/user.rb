class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one :cart
  has_many :items #En tant que vendeur
  has_many :bought_items, class_name: "Item"
  has_many :orders # Là où se trouve les items achetés
end

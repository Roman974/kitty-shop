class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.belongs_to :user_id, index: true

      t.timestamps
    end
  end
end

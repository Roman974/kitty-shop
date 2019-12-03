class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :image_url #A retirer quand active_storage sera installé
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end

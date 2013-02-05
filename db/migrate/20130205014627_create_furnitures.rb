class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :image
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :available

      t.timestamps
    end
  end
end

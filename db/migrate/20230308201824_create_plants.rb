class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :common_name, null: false
      t.string :scientific_name, null: false, default: ""
      t.string :image_url, default: "plant-logo"
      t.float :price, null: false, default: 19.99
      t.integer :quantity

      t.timestamps
    end
  end
end

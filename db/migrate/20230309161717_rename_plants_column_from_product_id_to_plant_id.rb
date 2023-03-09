class RenamePlantsColumnFromProductIdToPlantId < ActiveRecord::Migration[7.0]
  def change
    change_table :cart_details do |t|
      t.rename :product_id, :plant_id
    end
  end
end

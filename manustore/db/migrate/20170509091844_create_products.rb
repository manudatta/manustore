class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, id: false do |t|
      t.string :product_id
      t.primary_key :product_id
      t.text :name
      t.float :price

      t.timestamps
    end
  end
end

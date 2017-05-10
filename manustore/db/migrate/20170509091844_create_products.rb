class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, id: false do |t|
      t.primary_key :product_id
      t.text :name
      t.integer :price
      t.integer :category_id

      t.timestamps
    end
    change_column :products, :product_id, :string
  end
end

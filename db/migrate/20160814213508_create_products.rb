class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :department
      t.string :name
      t.string :sku
      t.string :model
      t.decimal :price

      t.timestamps
    end
  end
end

class RenameNameToProductName < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :name, :product_name
  end
end

class RenameTypeToPromoType < ActiveRecord::Migration[5.0]
  def change
    rename_column :promotions, :type, :promo_type
  end
end

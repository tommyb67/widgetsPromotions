class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :department
      t.string :store
      t.string :type
      t.string :level
      t.text :description
      t.string :promotion_code
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end

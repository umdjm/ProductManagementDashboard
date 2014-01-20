class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.datetime :from_date
      t.string :part_number
      t.decimal :retail_revenue
      t.integer :retail_quantity
      t.decimal :dealer_price
      t.integer :gross_quantity
      t.decimal :gross_revenue

      t.timestamps
    end
  end
end

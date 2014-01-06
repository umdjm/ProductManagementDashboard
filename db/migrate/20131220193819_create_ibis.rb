class CreateIbis < ActiveRecord::Migration
  def change
    create_table :ibis_data do |t|
      t.integer :row_id
      t.date :from_date
      t.date :to_date
      t.string :part_number
      t.decimal :dealer_price
      t.decimal :list_price

      t.timestamps
    end
  end
end

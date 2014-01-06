class CreateCompetitionPrices < ActiveRecord::Migration
  def change
    create_table :competition_prices do |t|
      t.integer :row_id
      t.date :from_date
      t.date :to_date
      t.string :part_number
      t.decimal :dealer_price
      t.decimal :list_price
      t.string :part_category
      t.text :competition_brand
      t.string :competition_part_number
      t.string :competition_name

      t.timestamps
    end
  end
end

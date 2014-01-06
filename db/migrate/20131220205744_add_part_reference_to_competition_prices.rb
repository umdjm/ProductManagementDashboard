class AddPartReferenceToCompetitionPrices < ActiveRecord::Migration
  def change
    add_column :competition_prices, :part_id, :integer
    add_index :competition_prices, :part_id
  end
end

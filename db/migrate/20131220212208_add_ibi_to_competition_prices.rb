class AddIbiToCompetitionPrices < ActiveRecord::Migration
  def change
    add_column :competition_prices, :ibi_id, :integer
    add_index :competition_prices, :ibi_id
  end
end

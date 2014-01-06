class AddPartNameToCompetitionPrice < ActiveRecord::Migration
  def change
    add_column :competition_prices, :part_name, :string
  end
end

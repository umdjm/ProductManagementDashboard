class FixIbiColumnName < ActiveRecord::Migration
  def self.up
    rename_column :competition_prices, :ibi_id, :ibis_datum_id
  end
end

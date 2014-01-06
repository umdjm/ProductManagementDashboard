class RenameIbiToIbisData < ActiveRecord::Migration
  def change
    rename_table :ibis_data, :ibis_data
  end
end

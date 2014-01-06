class AddPartReferenceToIbis < ActiveRecord::Migration
  def change
    add_column :ibis_data, :part_id, :integer
    add_index :ibis, :part_id
  end
end

class AddPartCategoryToIbisData < ActiveRecord::Migration
  def change
    add_column :ibis_data, :part_category, :string
  end
end

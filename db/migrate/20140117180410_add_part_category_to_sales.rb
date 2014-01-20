class AddPartCategoryToSales < ActiveRecord::Migration
  def change
    add_column :sales, :part_category, :string
  end
end

class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :part_number
      t.string :part_category
      t.string :part_name

      t.timestamps
    end
  end
end

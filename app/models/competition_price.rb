class CompetitionPrice < ActiveRecord::Base

  attr_accessible :competition_brand, :competition_part_number, :competition_name,
                  :dealer_price, :from_date, :list_price, :part_category, :part_number,
                  :part_name, :row_id, :to_date, :part_id, :ibis_datum_id

  belongs_to :part
  belongs_to :ibis_datum

  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      record = where(:row_id => row["row_id"]).first || new
      record.attributes = row.to_hash.slice(*accessible_attributes)
      record.save!
    end
  end
end

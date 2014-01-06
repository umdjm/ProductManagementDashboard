class IbisDatum < ActiveRecord::Base
  attr_accessible :dealer_price, :from_date, :list_price, :part_number, :row_id, :to_date, :part_id, :part_category

  belongs_to :part
  has_many :competition_prices

  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      record = where(:row_id => row["row_id"]).first || new
      record.attributes = row.to_hash.slice(*accessible_attributes)
      record.save!
    end
  end
end

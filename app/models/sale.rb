class Sale < ActiveRecord::Base
  attr_accessible :part_category, :dealer_price, :from_date, :gross_quantity, :gross_revenue, :part_number, :retail_quantity, :retail_revenue

  def self.refresh_part_numbers
    where(:part_category => nil).each do |row|
      part = CompetitionPrice.where(:part_number => row.part_number).first
      if !part.nil?
        row.part_category = part.part_category
        row.save
      end
    end
  end

  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      record = where(:from_date => row["from_date"], :part_number => row["part_number"]).first
      if(!record.nil?)
        puts "found row" + row.to_s
        record.dealer_price = row["dealer_price"]
        record.gross_quantity = row["gross_quantity"]
        record.gross_revenue = row["gross_revenue"]
        record.retail_quantity = row["retail_quantity"]
        record.retail_revenue = row["retail_revenue"]
        record.save!
      else
        puts "count not find row" + row.to_s
        record = new
        record.attributes = row.to_hash.slice(*accessible_attributes)
        record.save!
      end
    end
  end
end

class IbisDatum < ActiveRecord::Base
  attr_accessible :dealer_price, :from_date, :list_price, :part_number, :row_id, :to_date, :part_id, :part_category

  belongs_to :part
  has_many :competition_prices

  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      record = where(:from_date => row["from_date"], :part_number => row["part_number"]).first || new
      if(!record.nil?)
        puts "count find row" + row.to_s
        #record.list_price = row["list_price"]
        #record.dealer_price = row["dealer_price"]
        #record.save!
      else
        puts "count not find row" + row.to_s
      end
    end
  end
end

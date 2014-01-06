class Part < ActiveRecord::Base
  attr_accessible :part_category, :part_name, :part_number

  has_many :ibis_data
  has_many :competition_prices
end

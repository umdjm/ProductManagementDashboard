class DashboardController < ApplicationController

  before_filter :authorize

  def report1

  end

  def show
    CompetitionPrice.includes(:ibis_datum).where("ibis_datum_id IS NOT NULL").each do |row|
      row.ibis_datum.part_category = row.part_category
      row.ibis_datum.save
    end
  end

  def retrieve_data
    data = []
    CompetitionPrice.includes(:ibis_datum).where("ibis_datum_id IS NOT NULL").each do |row|
      data <<  {"competition_name" => row.competition_name, "month" => row.from_date, "competitive_price" => row.dealer_price, "price" => row.ibis_datum.dealer_price, "part_category" => row.part_category, "part_number" => row.part_number}
    end

    respond_to do |format|
      format.json { render json: data }
    end
  end

  def retrieve_data2
    ibis_data = []
    IbisDatum.includes(:competition_prices).where(:from_date => "2013-08-01").each do |row|
      ibis_datum = {"month" => row.from_date, "price" => row.dealer_price, "part_category" => row.part_category, "part_number" => row.part_number, "competitive_prices" => []}
      row.competition_prices.each do |competition_price|
        ibis_datum["competitive_prices"] <<  {"dealer_price" => competition_price["dealer_price"], "competition_name" => competition_price["competition_name"]}
      end
      ibis_data << ibis_datum unless row.competition_prices.count == 0
    end

    respond_to do |format|
      format.json { render json: ibis_data }
    end
  end

  def retrieve_data_old
    competition_prices = {}
    CompetitionPrice.select("ibis_datum_id, part_category, avg(dealer_price) as average_price").where("from_date = '2013-11-01' AND ibis_datum_id IS NOT NULL").group("ibis_datum_id, part_category").each do |row|
      competition_prices[row["ibis_datum_id"]] = row
    end

    ibis_data = []
    IbisDatum.where(:from_date => "2013-11-01").each do |row|
      competitive_price = competition_prices[row.id]
      if !competitive_price.nil?
        ibis_data << {"part_category" => competitive_price["part_category"], "month" => row.from_date, "price" => row.dealer_price, "part_number" => row.part_number, "competitive_price" => '%.2f' % competitive_price["average_price"]}
      end
    end

    respond_to do |format|
      format.json { render json: ibis_data }
    end
  end
end

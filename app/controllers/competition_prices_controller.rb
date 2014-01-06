class CompetitionPricesController < ApplicationController
  # GET /competition_prices
  # GET /competition_prices.json
  def index
    @competition_prices = CompetitionPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competition_prices }
    end
  end

  # GET /competition_prices/1
  # GET /competition_prices/1.json
  def show
    @competition_price = CompetitionPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competition_price }
    end
  end

  # GET /competition_prices/new
  # GET /competition_prices/new.json
  def new
    @competition_price = CompetitionPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competition_price }
    end
  end

  # GET /competition_prices/1/edit
  def edit
    @competition_price = CompetitionPrice.find(params[:id])
  end

  # POST /competition_prices
  # POST /competition_prices.json
  def create
    @competition_price = CompetitionPrice.new(params[:competition_price])

    respond_to do |format|
      if @competition_price.save
        format.html { redirect_to @competition_price, notice: 'Competition price was successfully created.' }
        format.json { render json: @competition_price, status: :created, location: @competition_price }
      else
        format.html { render action: "new" }
        format.json { render json: @competition_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competition_prices/1
  # PUT /competition_prices/1.json
  def update
    @competition_price = CompetitionPrice.find(params[:id])

    respond_to do |format|
      if @competition_price.update_attributes(params[:competition_price])
        format.html { redirect_to @competition_price, notice: 'Competition price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competition_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competition_prices/1
  # DELETE /competition_prices/1.json
  def destroy
    @competition_price = CompetitionPrice.find(params[:id])
    @competition_price.destroy

    respond_to do |format|
      format.html { redirect_to competition_prices_url }
      format.json { head :no_content }
    end
  end
end

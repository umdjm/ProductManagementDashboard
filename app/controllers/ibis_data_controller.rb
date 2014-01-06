class IbisDataController < ApplicationController

  def index
    @ibis_data = IbisDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ibis_data }
    end
  end

  def show
    @ibi = IbisDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ibi }
    end
  end

  def new
    @ibi = IbisDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ibi }
    end
  end

  def edit
    @ibi = IbisDatum.find(params[:id])
  end

  def create
    @ibi = IbisDatum.new(params[:ibi])

    respond_to do |format|
      if @ibi.save
        format.html { redirect_to @ibi, notice: 'Ibi was successfully created.' }
        format.json { render json: @ibi, status: :created, location: @ibi }
      else
        format.html { render action: "new" }
        format.json { render json: @ibi.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @ibi = IbisDatum.find(params[:id])

    respond_to do |format|
      if @ibi.update_attributes(params[:ibi])
        format.html { redirect_to @ibi, notice: 'Ibi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ibi.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ibi = IbisDatum.find(params[:id])
    @ibi.destroy

    respond_to do |format|
      format.html { redirect_to ibis_url }
      format.json { head :no_content }
    end
  end
end

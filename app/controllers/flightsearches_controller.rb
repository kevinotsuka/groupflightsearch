class FlightsearchesController < ApplicationController
  before_action :set_flightsearch, only: [:show, :edit, :update, :destroy]

  # GET /flightsearches
  # GET /flightsearches.json
  def index
    @flightsearches = Flightsearch.all
  end

  # GET /flightsearches/1
  # GET /flightsearches/1.json
  def show
  end

  # GET /flightsearches/new
  def new
    @flightsearch = Flightsearch.new
  end

  # GET /flightsearches/1/edit
  def edit
  end

  # POST /flightsearches
  # POST /flightsearches.json
  def create
    @flightsearch = Flightsearch.new(flightsearch_params)

    respond_to do |format|
      if @flightsearch.save
        format.html { redirect_to @flightsearch, notice: 'Flightsearch was successfully created.' }
        format.json { render :show, status: :created, location: @flightsearch }
      else
        format.html { render :new }
        format.json { render json: @flightsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flightsearches/1
  # PATCH/PUT /flightsearches/1.json
  def update
    respond_to do |format|
      if @flightsearch.update(flightsearch_params)
        format.html { redirect_to @flightsearch, notice: 'Flightsearch was successfully updated.' }
        format.json { render :show, status: :ok, location: @flightsearch }
      else
        format.html { render :edit }
        format.json { render json: @flightsearch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flightsearches/1
  # DELETE /flightsearches/1.json
  def destroy
    @flightsearch.destroy
    respond_to do |format|
      format.html { redirect_to flightsearches_url, notice: 'Flightsearch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flightsearch
      @flightsearch = Flightsearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flightsearch_params
      params.require(:flightsearch).permit(:departure_date, :arrival_date, :airport)
    end
end

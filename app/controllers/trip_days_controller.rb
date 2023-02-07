class TripDaysController < ApplicationController
  before_action :set_trip_day, only: %i[ show edit update destroy ]

  # GET /trip_days or /trip_days.json
  def index
    @trip_days = TripDay.all
  end

  # GET /trip_days/1 or /trip_days/1.json
  def show
  end

  # GET /trip_days/new
  def new
    @trip_day = TripDay.new
  end

  # GET /trip_days/1/edit
  def edit
  end

  # POST /trip_days or /trip_days.json
  def create
    @trip_day = TripDay.new(trip_day_params)

    respond_to do |format|
      if @trip_day.save
        format.html { redirect_to trip_day_url(@trip_day), notice: "Trip day was successfully created." }
        format.json { render :show, status: :created, location: @trip_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_days/1 or /trip_days/1.json
  def update
    respond_to do |format|
      if @trip_day.update(trip_day_params)
        format.html { redirect_to trip_day_url(@trip_day), notice: "Trip day was successfully updated." }
        format.json { render :show, status: :ok, location: @trip_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_days/1 or /trip_days/1.json
  def destroy
    @trip_day.destroy

    respond_to do |format|
      format.html { redirect_to trip_days_url, notice: "Trip day was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_day
      @trip_day = TripDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_day_params
      params.require(:trip_day).permit(:trip_id, :day_id, :review, :date, :weather_predicted)
    end
end

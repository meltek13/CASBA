class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:show, :update, :destroy]

  # GET /calendars
  def index
    @calendars = Calendar.all

    render json: @calendars
  end

  # GET /dashboard/1/calendars
  def showCalendars
    @calendars = []
    dashboard = Flatsharing.find(params[:id])

    Calendar.all.each do |d|
      if d.dashboard == dashboard.id
        @calendars << d
      end
    end

    render json: @calendars
    
  end

  def show
    render json: @calendar
  end

  # POST /dashboard/1/calendars
  def createCalendars
    @calendar = Calendar.new(calendar_params)
    
    @calendar.dashboard = Flatsharing.find(params[:id]).id

    if @calendar.save
      render json: @calendar, status: :created, location: @calendar
    else
      render json: @calendar.errors, status: :unprocessable_entity
    end
  end


  # # PATCH/PUT /calendars/1
  def update
    if @calendar.update(calendar_params)
      render json: @calendar
    else
      render json: @calendar.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /calendars/1
  def destroy
    @calendar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendar_params
      params.require(:calendar).permit(:title, :description, :timedate)
    end
end

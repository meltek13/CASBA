class FlatsharingsController < ApplicationController
  before_action :set_flatsharing, only: [:show, :update, :destroy]

  # GET /flatsharings
  def index
    @flatsharings = Flatsharing.all

    render json: @flatsharings
  end

  # GET /flatsharings/1
  def show
    render json: @flatsharing
  end

  # POST /flatsharings
  def create
    @flatsharing = Flatsharing.new(flatsharing_params)
    
    if @flatsharing.save
      render json: {flatsharing: @flatsharing}, status: :created, location: @flatsharing
    else
      render json: @flatsharing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flatsharings/1
  def update
    if @flatsharing.update(flatsharing_params)
      render json: @flatsharing
    else
      render json: @flatsharing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flatsharings/1
  def destroy
    @flatsharing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flatsharing
      @flatsharing = Flatsharing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flatsharing_params
      flatsharing_params = params.require(:flatsharing).permit(:title, :description, :admin_id)
    end
end

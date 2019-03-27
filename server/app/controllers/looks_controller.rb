class LooksController < ApplicationController

  def show
    @look = Look.find(params[:id])
    render json: @look
  end

  def create
    @look = Look.find_or_create_by(look_params)
    render json: @look
  end

  private

  def look_params
    params.require(:look).permit(:color, :clarity, :viscosity)
  end

end

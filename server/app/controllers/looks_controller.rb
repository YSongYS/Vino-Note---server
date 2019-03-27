class LooksController < ApplicationController
  def show
    @look = Look.find(params[:id])
    render json: @look
  end
end

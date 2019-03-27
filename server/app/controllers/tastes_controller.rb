class TastesController < ApplicationController
  def show
    @taste = Taste.find(params[:id])
    render json: @taste
  end
end

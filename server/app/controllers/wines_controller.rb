class WinesController < ApplicationController

  def create
    @wine = Wine.create(wine_params)
    render json: @wine
  end

  def show
    @wine = Wine.find(params[:id])
    render json: @wine
  end

  private

  def wine_params
    params.require(:wine).permit(:name, :variety, :vintage, :winery, :region, :country, :price_range, :image)
  end

end

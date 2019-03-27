class TastesController < ApplicationController
  def show
    @taste = Taste.find(params[:id])
    render json: @taste
  end

  def create
    @taste = Taste.find_or_create_by(taste_params)
    render json: @taste
  end

  private

  def taste_params
    params.require(:taste).permit(:sweetness, :acidity, :tannin, :alcohol, :body)
  end

end

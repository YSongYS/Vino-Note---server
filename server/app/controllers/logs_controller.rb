class LogsController < ApplicationController
  def show
    @log = Log.find(params[:id])
    render json: @log
  end


  def create
    @log = Log.create(log_params)
    render json: @log
  end

  def update
      @log = Log.find(params[:id])
      @log.update(log_params)
  end

  private

  def log_params
    params.require(:log).permit(:rating, :starred, :concluding_note, :user_id, :wine_id, :look_id, :smell_id, :taste_id)
  end

end

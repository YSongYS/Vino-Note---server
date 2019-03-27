class LogsController < ApplicationController
  def show
    @log = Log.find(params[:id])
    render json: @log
  end
end

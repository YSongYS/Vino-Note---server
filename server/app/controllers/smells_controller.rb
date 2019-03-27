class SmellsController < ApplicationController

    def create
      @smell = Smell.create(smell_params)
      render json: @smell
    end

    def show
      @smell = Smell.find(params[:id])
      render json: @smell
    end
    
end

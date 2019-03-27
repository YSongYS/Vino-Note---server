class SmellsController < ApplicationController

    def create
      @smell = Smell.find_or_create_by(smell_params)
      render json: @smell
    end

    def show
      @smell = Smell.find(params[:id])
      render json: @smell
    end
    
    private 

    def smell_params
      params.require(:smell).permit(
        :primary_level_two, 
        :primary_level_three, 
        :secondary_level_two, 
        :secondary_level_three, 
        :tertiary_level_two, 
        :tertiary_level_three, 
        :flaw_level_two, 
        :flaw_level_three
        )
    end
end

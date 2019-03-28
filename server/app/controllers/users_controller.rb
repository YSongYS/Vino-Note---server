class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def profile # === show
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)
    end

    def all_logs
      @user = User.find(params[:id])
      @logs = @user.logs
      render json:@logs
    end

    def favorite_wine_country
        @user = User.find(params[:id])
        countries = @user.wines.map{|wine| wine.country}
        fav_country = countries.max_by { |c| countries.count(c) }
        render json: fav_country
    end

    def favorite_wine_variety
        @user = User.find(params[:id])
        varieties = @user.wines.map{|wine| wine.variety}
        fav_variety = varieties.max_by { |v| varieties.count(v) }
        render json: fav_variety
    end

    def logs_created_dates 
        @user = User.find(params[:id])
        dates = @user.logs.map{|log| log.created_at}
        render json: dates
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :nickname)
    end

end

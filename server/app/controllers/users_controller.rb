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

    def edit
    end

    def update
        @user = User.find(params[:id])
        @user.update
    end

    private

    def user_params 
        params.require(:user).permit(:email, :password, :password_confirmation, :nickname)
    end
    
end

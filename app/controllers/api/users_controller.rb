module Api
  class UsersController < ApplicationController

    def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        render json: {
          status: 'OK',
          message: 'Usuario creado',
          data: user
        }, status: :ok
      else
        render json: {
          status: 'ERROR',
          message: 'Usuario no creado',
          data: user.errors
        }, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
  end
end
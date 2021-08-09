module Api
  class SessionsController < ApplicationController
    def create
      user = User.find_by(email:login_params[:email], password:login_params[:password])
      if user
        session[:user_id] = user.id
        render json: {
          status: 'OK',
          message: 'Usuario logueado',
          data: user
        }, status: :ok
      else
        render json: {
          status: 'ERROR',
          message: 'Usuario no logueado',
          data: user.errors
        }, status: :unprocessable_entity
      end
    end

    private
    def login_params
      params.permit(:email, :password)
    end
  end
end
module Api
  class HolidaysController < ApplicationController
    # Obtener vacaciones
    def index
      holidays = Holiday.order('created_at');
      render json: {
        status: 'OK',
        message: 'Vacaciones cargadas',
        data: holidays
      }, status: :ok
    end

    # Obtener vacaciones por ID
    def show
      holiday = Holiday.find(params[:id])
      render json: {
        status: 'OK',
        message: 'Vacación cargada',
        data: holiday
      }, status: :ok
    end
  end
end
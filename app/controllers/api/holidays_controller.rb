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

    # Crear vacación
    def create
      holiday = Holiday.new(holiday_params)
      if holiday.save
        render json: {
          status: 'OK',
          message: 'Vacación guardada',
          data: holiday
        }, status: :ok
      else
        render json: {
          status: 'ERROR',
          message: 'Vacación no guardado',
          data: holiday.errors
        }, status: :unprocessable_entity
      end
    end
    # Parametros para crear vacación
    private
    def holiday_params
      params.permit(:name, :startDate, :endDate)
    end
  end
end
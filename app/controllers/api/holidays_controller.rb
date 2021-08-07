module Api
  class HolidaysController < ApplicationController
    def index
      holidays = Holiday.order('created_at');
      render json: {
        status: 'OK',
        message: 'Vacaciones cargadas',
        data: holidays
      }, status: :ok
    end
  end
end
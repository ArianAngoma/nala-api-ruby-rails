Rails.application.routes.draw do
  namespace 'api' do
    resources :holidays #Accede a la ruta /api/holidays
  end
end

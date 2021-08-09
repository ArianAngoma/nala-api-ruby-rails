Rails.application.routes.draw do
  namespace 'api' do
    resources :holidays #Accede a la ruta /api/holidays
    resources :users #Ruta para signup
    resources :sessions #Ruta para signin
  end
end

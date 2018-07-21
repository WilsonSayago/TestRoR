Rails.application.routes.draw do
  resources :cities
  get '/consultar_temperatuas', to: 'cities#consultar_temperatuas'
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

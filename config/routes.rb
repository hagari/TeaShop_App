Rails.application.routes.draw do
  resources :products
  root 'products#index'
  get '/all', to: 'products#all'
  get '/go_back', to: "products#get_back"

end

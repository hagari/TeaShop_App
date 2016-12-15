Rails.application.routes.draw do
  # This could be done simply by the "resources :products" declaration, but then "get /products" request would have lead 
  # us by default to "index" action instead of "all".
  # resources :products
  get '', to: 'products#index'
  get '/products', to: 'products#all'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create'
  get '/products/:id/edit', to: 'products#edit'
  get '/products/:id', to: 'products#show'
  put '/products/:id', to: 'products#update'
  delete '/products/:id', to: 'products#destroy'
end

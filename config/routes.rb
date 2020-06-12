Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'zone#index'
  get '/home', to: 'zone#index'
end

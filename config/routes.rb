Rails.application.routes.draw do
  get 'secrets/new'
  get 'secrets/show'
  post "/login", to: "sessions#create"
  get 'sessions/new'
  post "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

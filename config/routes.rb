Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
    root 'users#index'
    get '/signup' => 'users#new'
    post '/signup' => 'users#create'
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

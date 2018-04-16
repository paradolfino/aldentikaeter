Rails.application.routes.draw do

    root 'users#index'
    get '/signup' => 'users#new'
    post '/signup' => 'users#create'
    resources :users
    get '/login' => 'sessions/new'
    post '/login' => 'sessions/create'
    delete '/logout' => 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

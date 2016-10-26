Rails.application.routes.draw do

  get '/register', to: 'users#new'
  get '/create', to: 'users#create'

  get '/home', to: 'users#home'
  post '/destroy', to: 'sessions#destroy'

  get '/login', to: 'sessions#new'
  post '/session/create', to: 'sessions#create'

  post '/logout', to: 'sessions#destroy'

end

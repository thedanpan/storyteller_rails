Rails.application.routes.draw do

  root 'welcome#index'

  get '/' => 'welcome#index'

  # get '/login' => 'auth#login'
  # post '/login' => 'sessions#create'
  # get '/signup' =>  'auth#new'
  # post '/signup' => 'auth#create'
  # get '/logout' => 'sessions#destroy'


  resources :genres do
    resources :stories
  end

  resources :stories do
    resources :comments
  end

  # get '/story/new' => 'stories#new'
  # post '/story/new' => 'stories#create'
  # get '/story/all' => 'stories#index'
  # get '/story/:id' => 'stories#show'
  # get '/story/:id/edit' => 'stories#update'
  # patch '/story/:id/edit' => 'stories#update'
  # get '/story/all/user' => 'stories#user'
  # delete '/story/:id' => 'stories#destroy'


  # get '/genre/all' => 'genre#index'
  # get '/genre/:id' => 'genre#show'


  # post '/comment/new' => 'comments#create'
  # get '/comment/:id' => 'comments#show'
  # get '/comment/:id/edit' => 'comments#update'
  # patch '/comment/:id/edit' => 'comments#update'
  # delete '/comment/:id' => 'comments#destroy'

end

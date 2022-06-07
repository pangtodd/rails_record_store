Rails.application.routes.draw do
  root to: 'albums#index'
  resources :artists
  resources :albums do
    resources:songs
  end

  get '/signup' => 'users#new'
  post 'users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'session#create'
  get '/signout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

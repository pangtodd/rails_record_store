Rails.application.routes.draw do
  root to: 'albums#index'
  resources :artists
  resources :albums do
    resources:songs
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :favorites
  root "movies#index"
  resources :movies do
  	resources :reviews
  end
    resources :users
    get 'signup' => 'users#new'

    resource :session
end

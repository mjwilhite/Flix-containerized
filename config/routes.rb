Rails.application.routes.draw do
  root "movies#index"
  resources :movies do
  	resources :reviews
    resources :favorites
  end
    resources :users
    get 'signup' => 'users#new'

    resource :session
end

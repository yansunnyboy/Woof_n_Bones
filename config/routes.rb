Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :centres do
    resources :bookings, only: %i[new create]
    member do
      get :bookings
    end
  end
  authenticated :user do
    resources :bookings, only: %i[update edit destroy show index]
    resources :dogs
    resources :users, only: %i[show] do
      resources :bookings, only: %i[index]
      resources :centres, only: %i[index]
    end
  end
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

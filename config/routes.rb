Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players do
    resources :matches, only: [:show, :index]
  end

  resources :matches do
    resources :players, only: [:show, :index]
  end

  resources :games do
    resources :matches, only: [:show, :index]
  end

  #devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_for :users, controllers: { registrations: 'registrations' }


end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :paypal do
    resources :checkouts, only: [:create]
  end

  root 'pages#home'

end

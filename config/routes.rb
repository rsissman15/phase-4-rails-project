Rails.application.routes.draw do
  
  resources :users
  resources :reservations, only: [:index]

  resources :activities do 
    resources :reservations, only: [:create]
  end

  get"/get-current-user", to: "sessions#get_current_user"
  post"/login", to: "sessions#create"

  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

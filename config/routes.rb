Rails.application.routes.draw do
  # get 'inventories/index'
  # get 'inventories/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# roots "foods#index"
resources :users, only: [:index ]
resources :foods, only: [:index, :new, :create]
resources :inventories, only [:index, :show, :create]
  # Defines the root path route ("/")
  # root "articles#index"
end

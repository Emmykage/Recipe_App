Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "foods#index"
  resources :users, only: [:index ]
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :inventories, only: [:index, :show, :new, :create, :destroy] do
    resources :inventory_foods, only: [:create, :destroy, :new]
  end
  resources :publics, only: [:index ]
  resources :recipes, except: :update do
      resources :recipe_foods, only: [:create, :destroy, :edit, :new, :update]
  end

end

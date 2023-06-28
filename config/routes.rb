Rails.application.routes.draw do
  resources :activity_tags
  resources :tags
  resources :activities
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/users/:id/recipes', to: 'users#recipes'
  get '/users/:id/bookmarks', to: 'users#bookmarks'
  resources :recipes
  resources :ratings
  resources :comments
  resources :bookmarks
end

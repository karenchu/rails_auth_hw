Rails.application.routes.draw do

  get 'sites/index'

  get 'sites/contact'

  get 'sites/about'

  # get 'sessions/new'

  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/edit'
  root to: "articles#index"

  resources :articles

  resources :users, except: [:index, :new]

  get "/sign_up", to: "users#new"
  resources :sessions, only: [:create, :destroy]

  get "/login", to: "sessions#new", as: "login"
  # get "/articles", to: "articles#index", as: "articles"
  # get "/articles/new", to: "articles#new", as: "new_article"
  # get "/articles/:id", to: "articles#show", as: "article"
  # get "/articles/:id/edit", to: "articles#edit", as: "edit_article"

  # post "/articles", to: "articles#create", to: "articles#create"

  # patch "/articles/:id", to: "articles#update"

  # delete "/articles/:id", to: "articles#destroy"
end

Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: [:index, :show] do
    resources :reviews
    resources :ratings
    resources :markers
  end
  resources :watchlist
end

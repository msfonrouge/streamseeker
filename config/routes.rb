Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies, only: %i[index show] do
    resources :reviews, only: [:create]
    member { post "toggle_favorite", to: "movies#toggle_favorite" }
    member { post "toggle_bookmark", to: "movies#toggle_bookmark" }
    member { post "unfavorite", to: "watchlists#unfavorite" }
  end
  resources :watchlists
end

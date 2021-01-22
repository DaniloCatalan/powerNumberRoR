Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "bienvenida", to: "home#index"

  root to: "home#index"

  get "scores", to: "scores#index"
  get "scores/new", to: "scores#new", as: :new_scores
  get "scores/:id", to: "scores#show"
  get "scores/:id/edit", to: "scores#edit"

  patch "scores/:id", to: "scores#update", as: :score
  post "scores", to: "scores#create"
  delete "scores/:id", to: "scores#destroy"
end

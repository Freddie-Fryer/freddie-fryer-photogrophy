Rails.application.routes.draw do
  devise_for :users
  get "images/new", to: "images#new"
  post "images", to: "images#create"
  get "images", to: "images#index"
  get "imagess/:id", to: "images#show", as: :image
  get "images/:id/edit", to: "images#edit"
  patch "images/:id", to: "images#update"
  delete "images/:id", to: "images#destroy"


  root to: 'images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

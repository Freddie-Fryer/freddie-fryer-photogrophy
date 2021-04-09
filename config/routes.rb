Rails.application.routes.draw do
  devise_for :users
  get 'images/index'
  get 'images/show'
  get 'images/new'
  get 'images/create'
  get 'images/edit'
  get 'images/update'
  get 'images/destroy'

  root to: 'images#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users
  get 'user/new'

  root 'categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :categories do
    resources :articles
  end

  resources :articles do
    resources :comments
  end

  resources :articles do
    resources :votes
  end

   resources :comments do
    resources :votes
  end
end

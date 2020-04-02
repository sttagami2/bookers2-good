Rails.application.routes.draw do
  devise_for :users
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end

  root 'home#top'
  get 'home/about', to: 'home#about'
end
Rails.application.routes.draw do
  get 'books/index'
  devise_for :users
  root to: 'home#top'
  get "home/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :books

end

Rails.application.routes.draw do

  devise_for :users
  root to: "homes#top"
  get '/homes/about', to: "homes#about", as: "about"
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :books, only:[:new, :create, :index, :show, :edit, :destroy]
  resources :users, only:[:edit, :show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

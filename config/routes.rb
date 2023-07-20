Rails.application.routes.draw do

  devise_for :users
  root to: "home#top"
  get '/home/about', to: "home#about", as: "about"
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :books, only:[:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only:[:edit, :show, :index, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

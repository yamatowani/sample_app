Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  root   "static_pages#home"
  get    "/help",    to: "static_pages#help"
  get    "/about",   to: "static_pages#about"
  get    "/contact", to: "static_pages#contact"
  get    "/signup",  to: "users#new"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  # resourcesメソッドはindex~destroyまでの7つのアクションのルーティングを自動で作成する onlyオプションで制限もできる
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  get '/microposts', to: 'static_pages#home'
end
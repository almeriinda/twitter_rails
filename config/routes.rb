Rails.application.routes.draw do
  post 'followers/create'
  put 'followers/update'
  resources :posts
  get "profiles/index"
  root to: "posts#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :sessions => "sessions", registrations: 'registrations' }
  devise_scope :users do
    get 'sign_in', to: 'devise/sessions#new'
    get 'signout', to: 'devise/sessions#destroy', as: :signout
  end
end

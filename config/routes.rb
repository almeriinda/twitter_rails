Rails.application.routes.draw do
  resources :posts
  get "profiles/index"
  root to: "posts#index"
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks", :sessions => "sessions" }
#  devise_scope :user do
 #   get 'sign_in', to: 'devise/sessions#new'
 #   get 'signout', to: 'devise/sessions#destroy', as: :signout
 # end

end

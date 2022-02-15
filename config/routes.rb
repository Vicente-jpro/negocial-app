Rails.application.routes.draw do
  get 'withdraw/account'
  resources :account_histories
  resources :accounts

  #devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'} 

  get '/accounts/:id/user', to: 'accounts#user_accounts', as: 'user_accounts'
  get '/accounts/:number/withdraw', to: 'accounts#withdraw', as: 'withdraw'
  get '/accounts/:number/transference', to: 'accounts#transference', as: 'transference'
  devise_for :users
  

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

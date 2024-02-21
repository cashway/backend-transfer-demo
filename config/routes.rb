Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :favoreds
  resources :users
  resources :orders

  resources :accounts do
    get 'balance', on: :collection
  end
end

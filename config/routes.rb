Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :consumers
  devise_for :users
  root "articles#index"
  resources :articles do
    resources :comments
  end
end

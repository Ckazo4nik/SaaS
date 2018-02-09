Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'calendar/show'
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  root 'homes#index'
  resources :dishes
  resources :menus
end

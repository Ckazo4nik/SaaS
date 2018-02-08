Rails.application.routes.draw do
  get 'calendar/show'
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  root 'homes#index'
  resources :dishes
end

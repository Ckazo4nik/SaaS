Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'calendar/show'
  get 'today' => 'menus#menu_today'
  namespace :api do
    namespace :v1 do
      get 'orders_now' => 'orders#info_order_for_today'
    end
  end
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  root 'calendar#show'
  resources :dishes
  resources :dishes_orders
  resources :menus
  resources :menus do
    resources :orders
  end
  resources :orders
end

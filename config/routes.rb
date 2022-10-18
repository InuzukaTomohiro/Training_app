Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  scope module: :public do
    root    "homes#top"
    get     "homes/about"
    get     "customers/my_page" => "customers#show"
    get     "customers/informaition/edit" => "customers#edit"
    patch   "customers/information" => "customers#update"
    get     "customers/confirm"
    patch   "customers/withdraw"
    resources :items,              only: [:index,:show]
    resources :shipping_addresses, only: [:index,:edit,:create,:update,:destroy]
    resources :cart_items,         only: [:index,:create,:update,:destroy]
    delete  "cart_items/destory_all"
    resources :orders,             only: [:new,:index,:show,:create]
    post    "orders/confirm"
    get     "orders/finish"
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  namespace :admin do
    root "homes#top"
    resources :items,       only: [:index,:new,:create,:show,:edit,:update]
    resources :genre,       only: [:index,:create,:edit,:update]
    resources :customers,   only: [:index,:show,:edit,:update]
    resources :orders,      only: [:show,:update]
    resources :order_items, only: [:update]
  end




end

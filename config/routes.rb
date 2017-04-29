Rails.application.routes.draw do
  root 'pages#home'

  resources :orders
  resources :menu_items
  resources :menu_groups
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

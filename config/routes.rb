Rails.application.routes.draw do
  root 'pages#home'

  resources :orders

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :menu_groups do
    member do
      resources :menu_items
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

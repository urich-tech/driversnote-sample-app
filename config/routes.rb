Rails.application.routes.draw do
 

 
 

  get 'pages/home'
  get 'pages/features'
  get 'pages/teams'
  get 'pages/pricing'
  get 'pages/about'
 resources :shops, only:[:index, :show]
  resources :products
devise_for :users
resources :order_items
resource :cards, only:[:show]


  devise_scope :user do
	get 'login', to: 'devise/sessions#new'
	get 'register', to: 'devise/registrations#new'
	delete 'logout', to: 'devise/sessions#destroy'
  end

  post 'online', to: 'home#online'
  post 'offline', to: 'home#offline'
#  devise_for :users 
 
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'github_info/index'

  post 'github_info/create'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :locations
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

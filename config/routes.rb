Rails.application.routes.draw do
  devise_for :moussaillons
  resources :gossips
  get 'static_pages/index'
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

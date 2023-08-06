Rails.application.routes.draw do
  resources :posts
  resources :codes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'dashboards#index'
end

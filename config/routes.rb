Rails.application.routes.draw do
  root 'cuisines#index'
 resources :foods
 resources :cuisines do
 resources :dishes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end

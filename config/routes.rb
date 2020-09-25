Rails.application.routes.draw do
  root 'tests#index'
  resources :tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: redirect('/proprietarios')
  resources :veiculos
  resources :proprietarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :seguros
  resources :teams
  root 'homepage#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

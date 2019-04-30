Rails.application.routes.draw do
  get "/" => "seguros#homepage", :as => "root"
  devise_for :admins
  get 'seguros/search' => 'seguros#search', as: 'search_seguros'
  resources :seguros
  resources :contacts, only: [:new, :create]
  resources :teams, :path => "contactos"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

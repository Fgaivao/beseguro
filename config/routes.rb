Rails.application.routes.draw do
  get "/" => "seguros#homepage", :as => "root"
  get "solucoes" => "seguros#solucoes", :as => "solucoes"
  get "negocios" => "seguros#negocios", :as => "negocios"
  devise_for :admins
  get 'seguros/search' => 'seguros#search', as: 'search_seguros'
  get 'seguros/index' => 'seguros#index', as: 'seguros'
  post 'seguros/index' => 'seguros#create'
  resources :seguros
  resources :contacts, only: [:new, :create]
  get "contacts" => "contacts#new"
  resources :teams, :path => "contactos"
  resources :seguroscontacts, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

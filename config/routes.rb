Rails.application.routes.draw do
  devise_for :users
  	
  devise_scope :user do
  	get 'registrar', to: 'devise/registrations#new', as: :registrar
  	get 'inicio', to: 'devise/sessions#new', as: :inicio
  	get 'desconectar', to: 'devise/sessions#destroy', as: :desconectar
  end

  resources :statuses
  get 'timeline', to: 'statuses#index', as: :timeline
  root to: "statuses#index"

  get '/:id', to: 'perfil#show'
end

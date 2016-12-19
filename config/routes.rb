Rails.application.routes.draw do
  
  devise_for :users

  get '/paginas', to: 'static_pages#pagina'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :towers
  resources :apartments
  resources :people
end

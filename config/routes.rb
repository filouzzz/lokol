Rails.application.routes.draw do
  get 'profils/show'
  get 'profils/new', to: 'profils#new'

  post 'profils/new', to: 'profils#new'

  post 'profils/create', to: 'profils#create'
  get 'profils/create', to: 'profils#create', as: "profils"

  get 'profils/update'

  get 'profils/edit'

  #mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root to: 'pages#home'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

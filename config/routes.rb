Rails.application.routes.draw do
  get 'profils/show'

  get 'profils/new'

  get 'profils/create'

  get 'profils/update'

  get 'profils/edit'

  #mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

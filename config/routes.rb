Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  get 'profils/show'
  get 'profils/new', to: 'profils#new'

  post 'profils/new', to: 'profils#new'

  post 'profils/create', to: 'profils#create'
  get 'profils/create', to: 'profils#create', as: "profils"

  get 'profils/update'

  get 'profils/edit'

  devise_for :users, controllers: { registrations: 'users/registrations'}

  root to: 'pages#home'


  resources :companies do
    resources :campaigns do
      post "/create_facebook_campaign",  to: "campaigns#create_facebook_campaign", as: "create_facebook"
      post "/create_facebook_adset", to: "campaigns#create_facebook_adset", as: "create_adset"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


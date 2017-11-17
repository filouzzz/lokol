Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  get 'profils/show'
  get 'profils/new', to: 'profils#new'

  post 'profils/new', to: 'profils#new'

  post 'profils/create', to: 'profils#create'
  get 'profils/create', to: 'profils#create', as: "profils"

  get 'profils/update'

  get 'profils/edit'

  devise_for :users, controllers: { registrations: 'users/registrations',
             :omniauth_callbacks => "users/omniauth_callbacks"
  }

  root to: 'pages#home'


  resources :companies do
    resources :campaigns do
      get "/create_facebook_campaign",  to: "campaigns#create_facebook_campaign", as: "create_facebook"
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


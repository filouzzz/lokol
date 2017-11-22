Rails.application.routes.draw do

  get 'previews/demo'

  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

  resources :profiles, except: [:destroy ]

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :companies do
    resources :campaigns do
      post "/create_facebook_campaign",  to: "campaigns#create_facebook_campaign", as: "create_facebook"
      post "/create_facebook_adset", to: "campaigns#create_facebook_adset", as: "create_adset"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

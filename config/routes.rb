Rails.application.routes.draw do
  devise_for :users,  skip: [:registrations], 

  authenticate :user do
    resources :precerts do 
      resources :contacts, except: [:index] 
      resources :peer2peers, except: [:index]
    end
    resources :insurers
    resources :services
    resources :diagnoses
    resources :providers
    resources :offices

    # Defines the root path route ("/")
    root "precerts#index", as: :root
  end

  unauthenticated do
    devise_scope :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end

    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get "up" => "rails/health#show", as: :rails_health_check
  end
end

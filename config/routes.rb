Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
      post 'signin', to: 'users#signin'
      post 'signup', to: 'users#signup'
      get 'validate', to: 'users#validate'
    end
  end
end

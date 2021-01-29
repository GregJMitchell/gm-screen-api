Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'sessions#create'
      post '/users', to: 'users#create'
      get '/users/campaigns', to: 'users/campaigns#index'
      get '/campaigns/:id', to: 'users/campaigns#show'
    end
  end
end

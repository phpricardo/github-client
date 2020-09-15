Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do

      get 'home/search/:user', to: 'home#search_repositories'

      resources :users, param: :_username
      post '/auth/login', to: 'authentication#login'
      get '/users', to: 'users#index'

      get  '/repositories', to: 'repositories#index'
      post '/repositories', to: 'repositories#create'
      get  '/repositories/search_by_tag/:tag', to: 'repositories#search_by_tag'
      
      post '/tags', to: 'tags#create'

    end  
  end
end

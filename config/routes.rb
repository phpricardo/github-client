Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: :json } do

      get 'home/search/:user', to: 'home#search_repositories'

      resources :users, param: :_username
      post '/auth/login', to: 'authentication#login'
      get '/*a', to: 'application#not_found'

    end  
  end
end

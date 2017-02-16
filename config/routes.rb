Rails.application.routes.draw do
  

  namespace :api do
    namespace :v2 do
      get "/teams", to: 'teams#index'
      post"/teams", to: 'teams#create'
      get "/teams/:id", to:'teams#show'
      patch "/teams/:id", to:'teams#update'
      delete "/teams/:id", to:'teams#destroy' 
    end 
  end 
end

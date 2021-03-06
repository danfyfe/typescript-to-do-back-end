Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      ## to dos ##
      get '/toDos', to: 'to_do#index'
      post '/toDos', to: 'to_do#create'
      patch '/toDos/:id', to: 'to_do#update'
      delete '/toDos/:id', to: 'to_do#delete'
    end
  end
end

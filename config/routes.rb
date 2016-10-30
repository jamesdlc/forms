Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "teams#index"

  # resources :teams


  namespace :api :defaults => {:format => :json} do
    get "/teams",        to: "teams#index"
    post "/teams",       to: "teams#create"
    get "/teams/:id",    to: "teams#show"
    put "/teams/:id",    to: "teams#update"
    delete "/teams/:id", to: "teams#destroy"
  end

end

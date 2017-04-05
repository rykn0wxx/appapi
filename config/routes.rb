Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      jsonapi_resources :users

      jsonapi_resources :roles
      jsonapi_resources :projects

      jsonapi_resources :raw_executives
      jsonapi_resources :mudapis
    end
  end


  # jsonapi_resource :roles
  # get 'index' => 'home#index', :as => 'home'
  # root :to => 'home#index'
end

require 'api_constraints'

Appapi::Application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
    namespace :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      jsonapi_resources :users
      jsonapi_resources :roles
      jsonapi_resources :projects
      jsonapi_resources :raw_executives
    end
  end

  # jsonapi_resource :roles
  # get 'index' => 'home#index', :as => 'home'
  # root :to => 'home#index'
end

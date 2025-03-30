Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "transformation_rules/index"
      get "transformation_rules/show"
      get "transformation_rules/create"
      get "transformation_rules/update"
      get "transformation_rules/destroy"
      get "view_entities/index"
      get "view_entities/show"
      get "view_entities/create"
      get "view_entities/update"
      get "view_entities/destroy"
      get "business_entities/index"
      get "business_entities/show"
      get "business_entities/create"
      get "business_entities/update"
      get "business_entities/destroy"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end
  # post "/graphql", to: "graphql#execute"
  root "home#index"

  # pages
  get "profile", to: "profile#index"
  get "about", to: "home#about"
  get "posts", to: "posts#index"
  get "signup", to: "signup#index"
  get "login", to: "login#index"

  # helpers
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # resources
  resources :posts
  resources :home
  resources :login
  resources :signup
  resources :users
  resources :profile

  namespace :api do
    namespace :v1 do
      post "signup", to: "users#signup"
      post "login", to: "users#login"
    end
  end
end

Rails.application.routes.draw do
  root "home#index"

  # pages
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


  namespace :api do
    namespace :v1 do
      post "signup", to: "users#signup"
      post "login", to: "users#login"
    end
  end
end

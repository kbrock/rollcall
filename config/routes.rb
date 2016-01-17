Rails.application.routes.draw do
  resources :users
  resources :statuses
  root to: "statuses#index"

  # sessions
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
end

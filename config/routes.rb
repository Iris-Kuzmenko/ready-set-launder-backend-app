Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"
    patch "/items_status" => "items#status_update"

    get "/wash_settings" => "wash_settings#index"
    get "/dry_settings" => "dry_settings#index"

    get "/categories" => "categories#index"

    post "/sessions" => "sessions#create"
  end
end

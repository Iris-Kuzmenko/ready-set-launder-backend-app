Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # test

  namespace :api do
    post "/users" => "users#create"
    get "/users/me" => "users#show"
    patch "/users/me" => "users#update"
    delete "/users/me" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"
    patch "/items_status" => "items#status_update"

    get "/categories" => "categories#index"

    get "/wash_settings" => "wash_settings#index"

    get "/dry_settings" => "dry_settings#index"
  end
end

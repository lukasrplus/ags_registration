AgsRegistration::Application.routes.draw do


  get "users/new"
  get "static_pages/signup"

  post "/users" => "users#create"

end

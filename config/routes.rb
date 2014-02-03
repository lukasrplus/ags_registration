AgsRegistration::Application.routes.draw do


  get 'users/new'
  post '/users' => 'users#create'

  get 'static_pages/signup'
  get 'static_pages/signin'


end

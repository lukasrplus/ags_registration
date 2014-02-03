AgsRegistration::Application.routes.draw do


  root :to => "static_pages#signup"

  get 'users/new'
  post '/users' => 'users#create'

  get 'static_pages/signup', as: 'signup'
  get 'static_pages/signin', as: 'signin'

  get 'static_pages/password_recovery', as: 'password_recovery'
  get 'static_pages/password_reset', as: 'password_reset'


end

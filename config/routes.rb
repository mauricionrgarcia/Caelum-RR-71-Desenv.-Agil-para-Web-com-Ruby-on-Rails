Rails.application.routes.draw do

  #get '/' => 'pages#index'
  root 'pages#index'

  resources :comments
  resources :qualifications
  resources :clients
  QualifyDish::Application.routes.draw do
  resources :comments
  resources :qualifications
  resources :clients
    match 'hello' => 'hello_world#index', via: 'get'
    #match 'hello', controller: 'restaurants', action: 'index', via: 'get'
  end

  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

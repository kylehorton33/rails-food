Rails.application.routes.draw do
  resources :ingredients
  root 'pages#home'
  get '404', :to => 'application#page_not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

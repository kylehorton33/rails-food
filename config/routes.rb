Rails.application.routes.draw do
  resources :ingredients
  match 'ingredient/:id/use_all' => 'ingredients#use_all', :as => :use_all_ingredient, :via => [:patch]
  root 'pages#home' do
    collection do
      get :search
    end
  end
  get 'category/:category_name' => 'ingredients#category', :as => :get_category_ingredients
  get '404', :to => 'application#page_not_found'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

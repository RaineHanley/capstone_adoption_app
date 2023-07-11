Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/pets" => "pets#index"
  post "/favorited_pets" => "favorited_pets#create"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/store_front", controller: "products", action: "display_all"
  get "/first_product", controller: "products", action: "display_first"
  get "last_product", controller: "products", action: "display_last"
  get "/choose_product_seg/:id_number", controller: "products", action: "choose_product"
  get "/choose_product_query", controller: "products", action: "choose_product"
end

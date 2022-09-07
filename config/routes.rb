Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/main/test", to: "main#test";
  get "/", to: "main#main";
  post "/select", to: "main#select";
  post "/submit", to: "main#test2";
  get "/calculate", to: "main#calculate"
  # Defines the root path route ("/")
  # root "articles#index"
end

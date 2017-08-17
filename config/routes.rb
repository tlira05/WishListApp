Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get "/posts" => "posts#index"
  root "posts#index"
  delete "/posts" => "posts#destroy"
  put "/posts" => "posts#update"
  put "/posts" => "posts#downgrade"
end

Rails.application.routes.draw do
  resources :products
  resources :categories
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  get 'categories' => 'categories#index'
  get 'create_categories' => 'categories#new'
  get 'products/tablet' => 'products#tablet'
  get '/electronics' => 'products#tablet'
  get 'products/salwar' => 'products#salwar'
  get '/dresses' =>'products#salwar'
  get 'products/sofas' => 'products#sofas'
  get '/home' => 'products#sofas' 
  get '/sports' => 'products#tshirts'
  get '/books_media' => 'products#graphic'
  root 'products#index'
  post 'products/filter_index' => 'products#filter_index'
  get 'products/filter' => 'products#filter'
  get 'products/filter_plugin' => 'products#filter_plugin'
end

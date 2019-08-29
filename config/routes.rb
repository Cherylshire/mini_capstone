Rails.application.routes.draw do
  namespace :api do
    get '/products_url' => 'product#products_1_action'
  end
end
 # a route is an unique combination between http verb and an url.
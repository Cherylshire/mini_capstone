Rails.application.routes.draw do
  namespace :api do
    get   '/products'           =>  'products#index'
    post  '/products'           =>  'products#create'
    get   '/products/:id'       =>  'products#show'
    patch '/products/:id'       =>  'products#update'
    delete'/products/:id'       =>  'products#destroy'
     
    get   '/suppliers'          =>  'suppliers#index'
    post  '/suppliers'          =>  'suppliers#create' #
    get   '/suppliers/:id'      =>  'suppliers#show'   #
    patch '/suppliers/:id'      =>  'suppliers#update' #
    delete'/suppliers/:id'      =>  'suppliers#destroy'#
  #   
    get   '/users'              =>  'users#index'      #
    post  '/users'              =>  'users#create'     
    get   '/users/:id'          =>  'users#show'       #
    patch '/users/:id'          =>  'users#update'     #
    delete'/users/:id'          =>  'users#destroy'    #
   
    post  '/sessions'           =>  'sessions#create'
   
    get   '/orders'             =>  'orders#index'
    post  '/orders'             =>  'orders#create'
    get   '/orders/:id'         =>  'orders#show'    

    get   '/carted_products'    =>  'carted_products#index'
    post  '/carted_products'    =>  'carted_products#create'
    delete'/carted_products/:id'=>  'carted_products#destroy' 
  end
end
 # a route is an unique combination between http verb and an url.
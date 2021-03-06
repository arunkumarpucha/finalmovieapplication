Rails.application.routes.draw do
  resources :logins
  resources :signups

  root to: 'logins#new'
  #get 'logins/new'
  get 'signups/new'
  get 'customers/new'

  get 'customers/edit'

  get 'customers/show'

  get 'customers/index'

  get 'tickets/new'

  post 'tickets/create'

  get 'tickets/edit'

  post 'tickets/update'

  #get 'tickets/show'
  match 'bookingticket'=>'tickets#show',via: :'get'

  #get 'tickets/index'

  match 'ticketslist' => 'tickets#index',via: :'get'

  get 'theatre_details/new'

  get 'theatre_details/edit'

  get 'theatre_details/show'

  get 'theatre_details/index'

  get 'movies/new'

  post 'movies/create'

  get 'movies/edit'

  patch 'movies/update'

  get 'movies/destroy'

  get 'movies/show'

  

  #get 'movies/index'

  match "movieslist" => "movies#index",via: :'get'

  #get 'movies/ftheatres'

  match "findtheatres" => "movies#ftheatres",via: :'get'

  get 'theatres/new'

  get 'theatres/edit'

  get 'theatres/show'

  get 'theatres/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

Rails.application.routes.draw do
  # Routes for the User_book resource:
  # CREATE
  get "/user_books/new", :controller => "user_books", :action => "new"
  post "/create_user_book", :controller => "user_books", :action => "create"

  # READ
  get "/user_books", :controller => "user_books", :action => "index"
  get "/user_books/:id", :controller => "user_books", :action => "show"

  # UPDATE
  get "/user_books/:id/edit", :controller => "user_books", :action => "edit"
  post "/update_user_book/:id", :controller => "user_books", :action => "update"

  # DELETE
  get "/delete_user_book/:id", :controller => "user_books", :action => "destroy"

  # BORROW
  get "/user_books/borrow/:id", :controller => "user_books", :action => "borrow"

  #RETURN
  get "/user_book/return/:id", :controller => "user_books", :action => "return"

  # MY INFO
  get "/users/show/", :controller => "user_books", :action => "my_info"
  #------------------------------

  # Routes for the Friendship resource:
  # CREATE
  get "/friendships/new", :controller => "friendships", :action => "new"
  post "/create_friendship", :controller => "friendships", :action => "create"

  # READ
  get "/friendships", :controller => "friendships", :action => "index"
  get "/friendships/:id", :controller => "friendships", :action => "show"

  # UPDATE
  get "/friendships/:id/edit", :controller => "friendships", :action => "edit"
  post "/update_friendship/:id", :controller => "friendships", :action => "update"

  # DELETE
  get "/delete_friendship/:id", :controller => "friendships", :action => "destroy"
  #------------------------------

  devise_for :borrows
  devise_for :users



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

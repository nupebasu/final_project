Rails.application.routes.draw do
  get('studies/search', {:})

  # Routes for the Study resource:
  # CREATE
  get('/studies/new', { :controller => 'studies', :action => 'new' })
  post('/create_study', { :controller => 'studies', :action => 'create' })

  # READ
  get('/studies', { :controller => 'studies', :action => 'index' })
  get('/studies/:id', { :controller => 'studies', :action => 'show' })

  # UPDATE
  get('/studies/:id/edit', { :controller => 'studies', :action => 'edit' })
  post('/update_study/:id', { :controller => 'studies', :action => 'update' })

  # DELETE
  get('/delete_study/:id', { :controller => 'studies', :action => 'destroy' })
  #------------------------------

  devise_for :users
  root 'studies#index'

  # Routes for the Category resource:
  # CREATE
  get('/categories/new', { :controller => 'categories', :action => 'new' })
  get('/create_category', { :controller => 'categories', :action => 'create' })

  # READ
  get('/categories', { :controller => 'categories', :action => 'index' })
  get('/categories/:id', { :controller => 'categories', :action => 'show' })

  # UPDATE
  get('/categories/:id/edit', { :controller => 'categories', :action => 'edit' })
  get('/update_category/:id', { :controller => 'categories', :action => 'update' })

  # DELETE
  get('/delete_category/:id', { :controller => 'categories', :action => 'destroy' })
  #------------------------------

  # Routes for the Body_part resource:
  # CREATE
  get('/body_parts/new', { :controller => 'body_parts', :action => 'new' })
  get('/create_body_part', { :controller => 'body_parts', :action => 'create' })

  # READ
  get('/body_parts', { :controller => 'body_parts', :action => 'index' })
  get('/body_parts/:id', { :controller => 'body_parts', :action => 'show' })

  # UPDATE
  get('/body_parts/:id/edit', { :controller => 'body_parts', :action => 'edit' })
  get('/update_body_part/:id', { :controller => 'body_parts', :action => 'update' })

  # DELETE
  get('/delete_body_part/:id', { :controller => 'body_parts', :action => 'destroy' })
  #------------------------------

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

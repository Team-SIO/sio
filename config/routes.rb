# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        items#index
#         new_admin_session GET    /admins/sign_in(.:format)                                                                admins/sessions#new
#             admin_session POST   /admins/sign_in(.:format)                                                                admins/sessions#create
#     destroy_admin_session DELETE /admins/sign_out(.:format)                                                               admins/sessions#destroy
#        new_admin_password GET    /admins/password/new(.:format)                                                           admins/passwords#new
#       edit_admin_password GET    /admins/password/edit(.:format)                                                          admins/passwords#edit
#            admin_password PATCH  /admins/password(.:format)                                                               admins/passwords#update
#                           PUT    /admins/password(.:format)                                                               admins/passwords#update
#                           POST   /admins/password(.:format)                                                               admins/passwords#create
# cancel_admin_registration GET    /admins/cancel(.:format)                                                                 admins/registrations#cancel
#    new_admin_registration GET    /admins/sign_up(.:format)                                                                admins/registrations#new
#   edit_admin_registration GET    /admins/edit(.:format)                                                                   admins/registrations#edit
#        admin_registration PATCH  /admins(.:format)                                                                        admins/registrations#update
#                           PUT    /admins(.:format)                                                                        admins/registrations#update
#                           DELETE /admins(.:format)                                                                        admins/registrations#destroy
#                           POST   /admins(.:format)                                                                        admins/registrations#create
#          new_user_session GET    /users/sign_in(.:format)                                                                 users/sessions#new
#              user_session POST   /users/sign_in(.:format)                                                                 users/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                                                                users/sessions#destroy
#         new_user_password GET    /users/password/new(.:format)                                                            users/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                                                           users/passwords#edit
#             user_password PATCH  /users/password(.:format)                                                                users/passwords#update
#                           PUT    /users/password(.:format)                                                                users/passwords#update
#                           POST   /users/password(.:format)                                                                users/passwords#create
#  cancel_user_registration GET    /users/cancel(.:format)                                                                  users/registrations#cancel
#     new_user_registration GET    /users/sign_up(.:format)                                                                 users/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                                                                    users/registrations#edit
#         user_registration PATCH  /users(.:format)                                                                         users/registrations#update
#                           PUT    /users(.:format)                                                                         users/registrations#update
#                           DELETE /users(.:format)                                                                         users/registrations#destroy
#                           POST   /users(.:format)                                                                         users/registrations#create
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                 edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#         order_order_items GET    /orders/:order_id/order_items(.:format)                                                  order_items#index
#                           POST   /orders/:order_id/order_items(.:format)                                                  order_items#create
#      new_order_order_item GET    /orders/:order_id/order_items/new(.:format)                                              order_items#new
#     edit_order_order_item GET    /orders/:order_id/order_items/:id/edit(.:format)                                         order_items#edit
#          order_order_item GET    /orders/:order_id/order_items/:id(.:format)                                              order_items#show
#                           PATCH  /orders/:order_id/order_items/:id(.:format)                                              order_items#update
#                           PUT    /orders/:order_id/order_items/:id(.:format)                                              order_items#update
#                           DELETE /orders/:order_id/order_items/:id(.:format)                                              order_items#destroy
#                    orders GET    /orders(.:format)                                                                        orders#index
#                           POST   /orders(.:format)                                                                        orders#create
#                 new_order GET    /orders/new(.:format)                                                                    orders#new
#                edit_order GET    /orders/:id/edit(.:format)                                                               orders#edit
#                     order GET    /orders/:id(.:format)                                                                    orders#show
#                           PATCH  /orders/:id(.:format)                                                                    orders#update
#                           PUT    /orders/:id(.:format)                                                                    orders#update
#                           DELETE /orders/:id(.:format)                                                                    orders#destroy
#                  complete GET    /complete(.:format)                                                                      carts#complete
#      new_item_discs_songs GET    /items/:item_id/discs/songs/new(.:format)                                                songs#new
#     edit_item_discs_songs GET    /items/:item_id/discs/songs/edit(.:format)                                               songs#edit
#          item_discs_songs PATCH  /items/:item_id/discs/songs(.:format)                                                    songs#update
#                           PUT    /items/:item_id/discs/songs(.:format)                                                    songs#update
#                           DELETE /items/:item_id/discs/songs(.:format)                                                    songs#destroy
#                           POST   /items/:item_id/discs/songs(.:format)                                                    songs#create
#            new_item_discs GET    /items/:item_id/discs/new(.:format)                                                      discs#new
#           edit_item_discs GET    /items/:item_id/discs/edit(.:format)                                                     discs#edit
#                item_discs PATCH  /items/:item_id/discs(.:format)                                                          discs#update
#                           PUT    /items/:item_id/discs(.:format)                                                          discs#update
#                           DELETE /items/:item_id/discs(.:format)                                                          discs#destroy
#                           POST   /items/:item_id/discs(.:format)                                                          discs#create
#                     items GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                  new_item GET    /items/new(.:format)                                                                     items#new
#                 edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                      item GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#      edit_cart_cart_items GET    /carts/:cart_id/cart_items/edit(.:format)                                                cart_items#edit
#           cart_cart_items PATCH  /carts/:cart_id/cart_items(.:format)                                                     cart_items#update
#                           PUT    /carts/:cart_id/cart_items(.:format)                                                     cart_items#update
#                           DELETE /carts/:cart_id/cart_items(.:format)                                                     cart_items#destroy
#                           POST   /carts/:cart_id/cart_items(.:format)                                                     cart_items#create
#               cart_orders POST   /carts/:cart_id/orders(.:format)                                                         orders#create
#            new_cart_order GET    /carts/:cart_id/orders/new(.:format)                                                     orders#new
#                cart_order GET    /carts/:cart_id/orders/:id(.:format)                                                     orders#show
#                      cart GET    /carts/:id(.:format)                                                                     carts#show
#                  admintop GET    /admintop(.:format)                                                                      home#admin
#              search_items GET    /items/search(.:format)                                                                  items#search
#                           GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                           GET    /items/new(.:format)                                                                     items#new
#                           GET    /items/:id/edit(.:format)                                                                items#edit
#                           GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  get 'artists/new'
  get 'artists/index'
  get 'artists/show'
  root 'items#index'

	devise_for :admins, controllers: {
	  sessions:      'admins/sessions',
	  passwords:     'admins/passwords',
	  registrations: 'admins/registrations'
	}
	devise_for :users, controllers: {
	  sessions:      'users/sessions',
	  passwords:     'users/passwords',
	  registrations: 'users/registrations'
	}
	get 'admins/items' => 'items#adminitems'
	resources :users
	resources :admins
	resources :orders do
		resources :order_items
	end

	get '/complete' => 'carts#complete', as: 'complete'
	

	resources :artists
	
	resources :items do
		resource :favs, only: %i(create,destroy)
    	resources :discs, only: [:new, :create, :edit, :show,:update, :destroy] do
      		resource :songs, only: [:new, :create, :edit, :update, :destroy]
    	end
  	end
	 resources :carts, only: [:show] do
	    resource :cart_items, only: [:edit,:update, :destroy, :create]
	    resources :orders, only: [:new, :create, :show]
	 end

	 get '/admintop' => 'home#admin', as: 'admintop'

	 resources :items do
    collection do
      get 'search' => 'items#search'
    end
  end

end

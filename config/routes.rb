Rails.application.routes.draw do

  namespace :admins do
    get 'orders/index'
  end
  namespace :admins do
    get 'labels/new'
  end
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
	

	resources :items do
		collection do
          get 'search' => 'items#search'
        end
		resource :favs, only: %i(create,destroy)
    	resources :discs, only: [:new, :create, :edit, :show,:update, :destroy] do
      		resource :songs, only: [:new, :create, :edit, :update, :destroy]
    	end
  	end

	namespace :admins do
		resources :orders do 
			get "undispatched", on: :collection
			get "dispatched", on: :collection
		end
		resources :users
		resources :labels
		resources :genres
		resources :artists
	 	 resources :items do
    		resources :discs, only: [:new, :create, :edit, :show,:update, :destroy] do
      			resource :songs, only: [:new, :create, :edit, :update, :destroy]
    		end
  		 end
	end
	resources :users
	
	# namespace :users do
	# 	resources :artists
	#  	 resources :items do
	# 		resource :favs, only: %i(create,destroy)
 #    		resources :discs, only: [:new, :create, :edit, :show,:update, :destroy] do
 #      			resource :songs, only: [:new, :create, :edit, :update, :destroy]
 #    		end
 #  		 end
	# end
 
	# scope module: :public do
	#   resources :items # => /items
	# end

	

	get '/complete' => 'carts#complete', as: 'complete'
	

	resources :genres
	resources :labels

	
	 resources :carts, only: [:show] do
	    resource :cart_items, only: [:edit,:update, :destroy, :create]
	    resources :orders, only: [:new, :create, :show]
	 end

	 get '/admintop' => 'home#admin', as: 'admintop'



end

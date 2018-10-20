Rails.application.routes.draw do

  root 'home#index'

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
	resources :users
	resources :orders do
		resources :order_items
	end

	get '/complete' => 'carts#complete', as: 'complete'

	resources :items, only: [:index, :show] do
		resource :favs, only: %i(create,destroy)
    	resource :discs, only: [:new, :create, :edit, :update, :destroy] do
      		resource :track_lists, only: [:new, :create, :edit, :update, :destroy]
    	end
  	end
	 resources :carts, only: [:show] do
	    resource :cart_items, only: [:edit,:update, :destroy, :create]
	    resources :orders, only: [:new, :create, :show]
	 end

	 resources :items do
    collection do
      get 'search' => 'items#search'
    end
  end

end

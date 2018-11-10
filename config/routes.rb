Rails.application.routes.draw do

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
	
	get '/admintop' => 'home#admin', as: 'admintop'

	resources :items, only: %i(index show) do
		collection do
          get 'search' => 'items#search'
    end
		resource :favs, only: [:create, :destroy]
    resources :discs, only: [:index, :show] do
      resource :songs, only: [:index]
    end
  end

	namespace :admins do
		resources :orders do 
			get "undispatched", on: :collection
			get "dispatched", on: :collection
		end
		resources :users, only: %i(index show)
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

	get '/complete' => 'carts#complete', as: 'complete'
	
	resources :genres
	resources :labels

	resources :carts, except: [:index] do
	  resource :cart_items, only: [:edit,:update, :destroy, :create]
	  resources :orders, only: [:new, :create, :show]
	end

end

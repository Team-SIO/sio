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

	get '/:order_id/thanks' => 'orders#thanks', as: 'thanks'
	
	resources :genres
	resources :labels
  resources :artists

	delete "/carts/:id/cart_items/:id" => "carts#destroy", as: "delete_cart_item"

resources :orders, only: [:new, :create, :show,:index]

	resources :carts, except: [:index] do
	  resource :cart_items, only: [:edit,:update]
  end

	get 'inquiry' => 'inquiry#index'              # 入力画面
	post 'inquiry/confirm' => 'inquiry#confirm'   # 確認画面
	post 'inquiry/thanks' => 'inquiry#thanks'     #


  post "/items/:item_id/carts/:cart_id" => "cart_items#create", as: "set_cart_items"

end

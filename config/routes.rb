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

	resources :items, only: %i(show) do
		collection do
          get 'search' => 'items#search'
    end
		resource :favs, only: [:create, :destroy]
    resources :discs, only: [:index, :show] do
      resource :songs, only: [:index]
    end
  end

  get '/myfav' => 'favs#my_fav'


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
	resources :users, except: [:index]

	get '/:order_id/thanks' => 'orders#thanks', as: 'thanks'

	
	resources :genres, only: [:show]
  resources :artists, only: [:index, :show]
  get "/ranking" => "ranking#index"


	delete "/carts/:id/cart_items/:id" => "carts#destroy", as: "delete_cart_item"

 resources :orders, except: [:new]

	resources :carts, except: [:index] 

	get 'inquiry' => 'inquiries#index', as: "inquiry"              # 入力画面
	post 'inquiry/confirm' => 'inquiries#confirm'   # 確認画面
	post 'inquiry/thanks' => 'inquiries#thanks'     #


  post "/items/:item_id/carts/:cart_id" => "cart_items#create", as: "set_cart_items"

end

Rails.application.routes.draw do
<<<<<<< HEAD
  root 'home#index'
=======
  devise_for :admins
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> cba126704ba42eccb08eaf4ff63096408fafd3f0
end

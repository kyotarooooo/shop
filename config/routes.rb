Rails.application.routes.draw do

	root "users#index"
	resources :products, only: [:new, :create, :index, :show]
	get 'products/:id/purchase' => 'products#purchase', as: 'purchase'
  	patch 'products/:id/purchase_confirm' => 'products#purchase_confirm', as: 'purchase_confirm'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

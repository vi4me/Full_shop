Rails.application.routes.draw do
	
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'

  resources :categories do
  	resources :products  
  end

  resources :comments
  
  resources :users do
    collection do
      get :profile
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

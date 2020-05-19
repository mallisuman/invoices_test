Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :invoices do
  	collection do
  		get :pending
  		get :collected
  	end
  	resources :collections
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  
end

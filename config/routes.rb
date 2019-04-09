Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  get 'welcome/index'

  resources :users do
  	resources :childrens
  	member do
  		get 'fathers_detail', to: "users#father", as: "father"
  		get 'mothers_detail', to: "users#mother", as: "mother"
  		get 'children_detail', to: "users#children", as: "children"


  	end
  end


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



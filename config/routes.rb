Rails.application.routes.draw do
  get 'welcome/index'
  get "app/views/users/fathers_detail", to: "parents#father", as: "father"
  get "app/views/users/mothers_detail", to: "parents#mother", as: "mother"
  get "app/views/users/children_detail", to: "parents#children", as: "children"

  resources :users


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

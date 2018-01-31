Rails.application.routes.draw do
  get 'corsairs/new'

  get 'static_pages/index'

  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'

  resources :corsairs
  
end

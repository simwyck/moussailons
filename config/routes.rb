Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  resources :corsairs

end


=begin
corsairs GET    /corsairs(.:format)              corsairs#index
          POST   /corsairs(.:format)              corsairs#create
new_corsair GET    /corsairs/new(.:format)          corsairs#new
edit_corsair GET    /corsairs/:id/edit(.:format)     corsairs#edit
  corsair GET    /corsairs/:id(.:format)          corsairs#show
          PATCH  /corsairs/:id(.:format)          corsairs#update
          PUT    /corsairs/:id(.:format)          corsairs#update
          DELETE /corsairs/:id(.:format)          corsairs#destroy
=end

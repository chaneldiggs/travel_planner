Rails.application.routes.draw do
  resources :contacts
  resources :trips
  devise_for :users
  root 'welcome#homepage'

  get 'index' => 'welcome#index'

  get 'about' => 'welcome#about'

  get 'test' => 'welcome#test'

  post 'create_itinerary' => 'trips#create_itinerary'

  post 'edit_itinerary' => 'trips#edit_itinerary'

  get 'delete_itinerary' => 'trips#delete_itinerary'

  post 'upload_photo' => 'trips#upload_photo'

  get 'all_photos' => 'trips#all_photos'

  get 'delete_photo' => 'trips#delete_photo'

  post 'create_partner' => 'trips#create_partner'

  get 'delete_partner' => 'trips#delete_partner'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

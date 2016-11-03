Rails.application.routes.draw do
  resources :trips
  devise_for :users
  root 'welcome#homepage'

  get 'index' => 'welcome#index'

  get 'about' => 'welcome#about'

  get 'test' => 'welcome#test'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

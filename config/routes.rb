Rails.application.routes.draw do
  devise_for :users
  root 'welcome#homepage'

  get 'index' => 'welcome#index'

  get 'about' => 'welcome#about'

  get 'country_profile' => 'welcome#country_profile'

  get 'test' => 'welcome#test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

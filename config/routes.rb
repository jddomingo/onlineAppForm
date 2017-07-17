Rails.application.routes.draw do
  resources :forms
  resources :users
  #get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'forms#index'
  resources :people
  post 'people/generate'
  post 'forms/download'
end

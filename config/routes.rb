Rails.application.routes.draw do
  #get 'welcome/index'
  match ':controller(/:action(/:id))', :via => :get
  post "/welcome/sample"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end

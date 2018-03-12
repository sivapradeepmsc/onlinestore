Rails.application.routes.draw do
  

  get 'welcome/index'
 
devise_for :users
resources :articles do
  resources :comments
end

resources :pices do
resources :pens 
end

resources :pens do
	resources :pices
end
#resources :pens
post '/pens/:id',to:'pens#clear'
 
       
root 'welcome#index'

end

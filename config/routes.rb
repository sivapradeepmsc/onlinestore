Rails.application.routes.draw do
  

  get 'welcome/index'
devise_for :users
resources :articles do
  resources :comments
end
resources :pices do
resources :pens 
end
       
root 'welcome#index'
end

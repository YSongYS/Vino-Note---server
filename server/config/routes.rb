Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wines
  resources :users
  resources :logs
  resources :smells

  #delete as needed
  resources :looks
  resources :tastes

end

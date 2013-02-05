ANR::Application.routes.draw do
  resources :furnitures


  root :to => 'home#index'
end

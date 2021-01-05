Rails.application.routes.draw do
  devise_for :users
  resources :kullanicis
  get 'home/index'
  root 'home#index'
  get 'home/sinavlar'
  get 'home/aciklama'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end

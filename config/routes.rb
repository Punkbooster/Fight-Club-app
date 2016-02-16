Rails.application.routes.draw do

  resources :fighters

  root 'fighters#index'
  
end

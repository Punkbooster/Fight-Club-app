Rails.application.routes.draw do

  root 'fighters#index'
  
  resources :fights

  get 'fighters/leaderboard'


  resources :fighters do 
  	resources :skills
  end
  
end

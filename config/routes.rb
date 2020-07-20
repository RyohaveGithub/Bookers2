Rails.application.routes.draw do
  get 'homes/about'
  root 'users#top'

  devise_for :users

  resources:books


  resources:users
   get 'about'=>'users#about'



end

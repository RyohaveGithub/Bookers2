Rails.application.routes.draw do
  devise_for :users
  root 'users#top'
  resources:books


  resources:users



end

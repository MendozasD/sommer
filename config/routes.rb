Rails.application.routes.draw do
  root to: 'pages#home'

  get 'schauspieler', to: 'pages#schauspieler'
  get 'regisseur', to: 'pages#regisseur'
  get 'texter', to: 'pages#texter'
  get 'steckbrief', to: 'pages#steckbrief'
  get 'kontakt', to: 'pages#kontakt'

  resources :texters
  resources :directors
  resources :actors
end

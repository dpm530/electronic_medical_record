Rails.application.routes.draw do

  resources :libraries
   devise_for :users

   resources :users
   resources :user_contact_informations


end

Rails.application.routes.draw do

  resources :patient_emergency_contacts
   devise_for :users

   resources :patients
   resources :libraries
   resources :users
   resources :user_contact_informations


end

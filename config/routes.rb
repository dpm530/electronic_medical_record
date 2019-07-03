Rails.application.routes.draw do

   devise_for :users

   resources :patients do
      resources :patient_contact_informations
      resources :patient_emergency_contacts   
   end

   resources :libraries
   resources :users
   resources :user_contact_informations


end

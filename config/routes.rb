Rails.application.routes.draw do

  resources :progress_notes
   root to: 'users#index'

   devise_for :users

   resources :patients do
      resources :patient_contact_informations
      resources :patient_emergency_contacts
      resources :progress_notes
   end

   resources :users
   resources :user_contact_informations
   resources :libraries


end

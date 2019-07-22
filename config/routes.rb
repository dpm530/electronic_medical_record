Rails.application.routes.draw do

   root to: 'users#index'

   devise_for :users

   resources :patients do
      resources :patient_contact_informations
      resources :patient_emergency_contacts
      resources :progress_notes
      resources :intake_notes
      resources :treatment_plans
      resources :termination_notes
   end

   resources :users do
      collection do
         get 'staff' => 'users#staff'
      end
   end

   resources :user_contact_informations
   resources :libraries
   resources :intake_notes
   resources :progress_notes
   resources :treatment_plans
   resources :termination_notes


end

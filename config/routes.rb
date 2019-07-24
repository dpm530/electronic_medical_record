Rails.application.routes.draw do

   root to: 'users#index'

   devise_for :users

   resources :patients do
      resources :patient_emergency_contacts
      resources :progress_notes
      resources :intake_notes
      resources :treatment_plans
      resources :termination_notes
      collection do
         get ':id/clinician' => 'patients#clinician'
         get ':id/notes' => 'patients#notes'
      end
   end

   resources :users do
      collection do
         get 'staff' => 'users#staff'
      end
   end

   resources :documents do
      collection do
         get 'patient/:id' => 'documents#index'
      end
   end

   resources :user_contact_informations
   resources :libraries
   resources :intake_notes
   resources :progress_notes
   resources :treatment_plans
   resources :termination_notes


end

Rails.application.routes.draw do

   root to: 'users#index'


   devise_for :users
   
   resources :users do
      collection do
         patch 'update-user/:id' => 'users#update_user'
         get 'staff' => 'users#staff'
         get 'add-user' => 'users#new'
         post 'add-user' => 'users#create'
      end
   end

   resources :patients do
      collection do
         get ':id/clinician' => 'patients#clinician'
         get ':id/notes' => 'patients#notes'
      end
      resources :patient_emergency_contacts
      resources :progress_notes
      resources :intake_notes
      resources :treatment_plans
      resources :termination_notes
      resources :documents
   end





   resources :user_contact_informations
   resources :libraries
   resources :intake_notes
   resources :progress_notes
   resources :treatment_plans
   resources :termination_notes


end

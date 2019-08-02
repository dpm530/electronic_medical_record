Rails.application.routes.draw do


   root to: 'application#index'

   devise_for :users

   resources :users_admin, :controller => 'users' do
      collection do
         get 'staff' => 'users#staff'
         get 'add-user' => 'users#new'
         post 'add-user' => 'users#create'
         patch 'update-user/:id' => 'users#update_user'
      end
   end

   resources :practice, :controller => 'users' do
      collection do
         get 'new-user' => 'users#new'
         post 'create-user' => 'users#create'
         patch 'update-user/:id' => 'users#update_user'
      end
   end

   resource :profile, :controller => 'users', only: [:show] do
      collection do
         get ':id' => 'users#show'
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

   resources :administrators
   resources :clinicians
   resources :user_contact_informations
   resources :libraries
   resources :intake_notes
   resources :progress_notes
   resources :treatment_plans
   resources :termination_notes




end

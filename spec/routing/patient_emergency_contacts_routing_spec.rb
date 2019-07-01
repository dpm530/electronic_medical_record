require "rails_helper"

RSpec.describe PatientEmergencyContactsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/patient_emergency_contacts").to route_to("patient_emergency_contacts#index")
    end

    it "routes to #new" do
      expect(:get => "/patient_emergency_contacts/new").to route_to("patient_emergency_contacts#new")
    end

    it "routes to #show" do
      expect(:get => "/patient_emergency_contacts/1").to route_to("patient_emergency_contacts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patient_emergency_contacts/1/edit").to route_to("patient_emergency_contacts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/patient_emergency_contacts").to route_to("patient_emergency_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patient_emergency_contacts/1").to route_to("patient_emergency_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patient_emergency_contacts/1").to route_to("patient_emergency_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_emergency_contacts/1").to route_to("patient_emergency_contacts#destroy", :id => "1")
    end
  end
end

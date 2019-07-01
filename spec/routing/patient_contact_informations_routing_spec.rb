require "rails_helper"

RSpec.describe PatientContactInformationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/patient_contact_informations").to route_to("patient_contact_informations#index")
    end

    it "routes to #new" do
      expect(:get => "/patient_contact_informations/new").to route_to("patient_contact_informations#new")
    end

    it "routes to #show" do
      expect(:get => "/patient_contact_informations/1").to route_to("patient_contact_informations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patient_contact_informations/1/edit").to route_to("patient_contact_informations#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/patient_contact_informations").to route_to("patient_contact_informations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patient_contact_informations/1").to route_to("patient_contact_informations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patient_contact_informations/1").to route_to("patient_contact_informations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_contact_informations/1").to route_to("patient_contact_informations#destroy", :id => "1")
    end
  end
end

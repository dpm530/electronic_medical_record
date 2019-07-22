require "rails_helper"

RSpec.describe TreatmentPlansController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/treatment_plans").to route_to("treatment_plans#index")
    end

    it "routes to #new" do
      expect(:get => "/treatment_plans/new").to route_to("treatment_plans#new")
    end

    it "routes to #show" do
      expect(:get => "/treatment_plans/1").to route_to("treatment_plans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/treatment_plans/1/edit").to route_to("treatment_plans#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/treatment_plans").to route_to("treatment_plans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/treatment_plans/1").to route_to("treatment_plans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/treatment_plans/1").to route_to("treatment_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/treatment_plans/1").to route_to("treatment_plans#destroy", :id => "1")
    end
  end
end

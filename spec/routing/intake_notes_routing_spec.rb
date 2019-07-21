require "rails_helper"

RSpec.describe IntakeNotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/intake_notes").to route_to("intake_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/intake_notes/new").to route_to("intake_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/intake_notes/1").to route_to("intake_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/intake_notes/1/edit").to route_to("intake_notes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/intake_notes").to route_to("intake_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/intake_notes/1").to route_to("intake_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/intake_notes/1").to route_to("intake_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/intake_notes/1").to route_to("intake_notes#destroy", :id => "1")
    end
  end
end

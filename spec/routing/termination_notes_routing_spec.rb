require "rails_helper"

RSpec.describe TerminationNotesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/termination_notes").to route_to("termination_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/termination_notes/new").to route_to("termination_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/termination_notes/1").to route_to("termination_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/termination_notes/1/edit").to route_to("termination_notes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/termination_notes").to route_to("termination_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/termination_notes/1").to route_to("termination_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/termination_notes/1").to route_to("termination_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/termination_notes/1").to route_to("termination_notes#destroy", :id => "1")
    end
  end
end

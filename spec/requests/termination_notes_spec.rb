require 'rails_helper'

RSpec.describe "TerminationNotes", type: :request do
  describe "GET /termination_notes" do
    it "works! (now write some real specs)" do
      get termination_notes_path
      expect(response).to have_http_status(200)
    end
  end
end

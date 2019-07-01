require 'rails_helper'

RSpec.describe "PatientEmergencyContacts", type: :request do
  describe "GET /patient_emergency_contacts" do
    it "works! (now write some real specs)" do
      get patient_emergency_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end

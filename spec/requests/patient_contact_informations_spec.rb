require 'rails_helper'

RSpec.describe "PatientContactInformations", type: :request do
  describe "GET /patient_contact_informations" do
    it "works! (now write some real specs)" do
      get patient_contact_informations_path
      expect(response).to have_http_status(200)
    end
  end
end

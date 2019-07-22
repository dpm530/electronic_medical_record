require 'rails_helper'

RSpec.describe "TreatmentPlans", type: :request do
  describe "GET /treatment_plans" do
    it "works! (now write some real specs)" do
      get treatment_plans_path
      expect(response).to have_http_status(200)
    end
  end
end

require 'rails_helper'

RSpec.describe "Consoles", type: :request do
  describe "GET /consoles" do
    it "works! (now write some real specs)" do
      get consoles_path
      expect(response).to have_http_status(200)
    end
  end
end

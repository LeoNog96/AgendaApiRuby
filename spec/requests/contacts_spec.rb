require 'rails_helper'

RSpec.describe "Contacts", type: :request do
  describe "GET /api/v1/contacts" do
    it "with authe" do
      user = create(:user)

      headers = {
        "x-User-Token" => user.authentication_token, 
        "x-User-Email" => user.email, 
        "ACCEPT" => "application/json"
      }

      get "/api/v1/contacts",  params: {}, headers: headers
      
      expect(response).to have_http_status(200)
    end

    it "without auth" do 
      headers = { "ACCEPT" => "application/json" }

      get "/api/v1/contacts",  params: {}, headers: headers
      
      expect(response).to have_http_status(401)
    end
  end
end

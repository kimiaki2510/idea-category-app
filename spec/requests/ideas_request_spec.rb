require 'rails_helper'

RSpec.describe "Ideas", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/ideas/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/ideas/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/ideas/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/ideas/create"
      expect(response).to have_http_status(:success)
    end
  end

end

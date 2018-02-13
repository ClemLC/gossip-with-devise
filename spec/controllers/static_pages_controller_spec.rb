require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "DELETE Gossips, yours and not their" do
    it "returns the" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end

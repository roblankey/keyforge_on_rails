require 'rails_helper'

RSpec.describe "houses#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/houses/#{house.id}"
  end

  describe 'basic destroy' do
    let!(:house) { create(:house) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { House.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end

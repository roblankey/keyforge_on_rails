require 'rails_helper'

RSpec.describe "archons#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/archons/#{archon.id}"
  end

  describe 'basic destroy' do
    let!(:archon) { create(:archon) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Archon.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end

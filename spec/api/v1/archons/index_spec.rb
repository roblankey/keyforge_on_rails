require 'rails_helper'

RSpec.describe "archons#index", type: :request do
  let(:params) { { sort: '-created_at' } }

  subject(:make_request) do
    jsonapi_get '/api/v1/archons',
      params: params
  end

  describe 'basic fetch' do
    let!(:archon1) { create(:archon) }
    let!(:archon2) { create(:archon) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(false)).to match_array([archon1.id, archon2.id])
      assert_payload(:archon, archon1, json_items[1])
      assert_payload(:archon, archon2, json_items[0])
    end
  end
end

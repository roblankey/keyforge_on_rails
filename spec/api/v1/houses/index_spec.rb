require 'rails_helper'

RSpec.describe "houses#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/houses",
      params: params
  end

  describe 'basic fetch' do
    let!(:house1) { create(:house) }
    let!(:house2) { create(:house) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([house1.id, house2.id])
      assert_payload(:house, house1, json_items[0])
      assert_payload(:house, house2, json_items[1])
    end
  end
end

require 'rails_helper'

RSpec.describe 'cards#index', type: :request do
  let(:params) { { sort: '-created_at' } }

  subject(:make_request) do
    jsonapi_get '/api/v1/cards', params: params
  end

  describe 'basic fetch' do
    let!(:card1) { create(:card) }
    let!(:card2) { create(:card) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(false)).to match_array([card1.id, card2.id])
      assert_payload(:card, card1, json_items[1])
      assert_payload(:card, card2, json_items[0])
    end
  end
end

require 'rails_helper'

RSpec.describe 'cards#show', type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/cards/#{card.id}", params: params
  end

  describe 'basic fetch' do
    let!(:card) { create(:card) }

    it 'serializes the resource correctly' do
      pending("WTF?")
      make_request
      assert_payload(:card, card, json_item)
    end
  end
end

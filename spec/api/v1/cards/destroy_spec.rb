require 'rails_helper'

RSpec.describe 'card#destroy', type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/cards/#{card.id}"
  end

  describe 'basic destroy' do
    let!(:card) { create(:card) }

    it 'updates the resource' do
      expect(&method(:make_request)).to change { Card.count }.by(-1)
      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end

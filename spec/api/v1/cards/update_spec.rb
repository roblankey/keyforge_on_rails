require 'rails_helper'

RSpec.describe 'cards#update', type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/cards/#{card.id}", payload
  end

  describe 'basic update' do
    let(:card) { create(:card) }
    let(:new_card) { build(:card) }

    let(:payload) do
      {
        data: {
          id: card.id.to_s,
          type: 'cards',
          attributes: {
            name: new_card.name,
            image_url: new_card.image_url
          }
        }
      }
    end

    it 'updates the resource' do
      expect { make_request }.to change { card.reload.attributes }
      assert_payload(:card, card, json_item)
      expect(card.name).to eq(new_card.name)
      expect(card.image_url).to eq(new_card.image_url)
    end
  end
end

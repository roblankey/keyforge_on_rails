require 'rails_helper'

RSpec.describe 'cards#create', type: :request do
  subject(:make_request) do
    jsonapi_post '/api/v1/cards', payload
  end

  describe 'basic create' do
    let(:house) { FactoryBot.create(:house) }
    let(:card) { FactoryBot.build(:card, house: house) }

    let(:payload) do
      {
        data: {
          type: 'cards',
          attributes: {
            name: card.name,
            card_type: card.card_type,
            image_url: card.image_url
          },
          relationships: {
            house: {
              data: {
                type: 'houses',
                id: house.id
              }
            }
          }
        }
      }
    end

    it 'creates the resource' do
      expect(&method(:make_request)).to change { Card.count }.by(1)
      card = Card.last
      assert_payload(:card, card, json_item)
    end
  end
end

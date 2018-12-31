require 'rails_helper'

RSpec.describe 'archons#create', type: :request do
  before(:all) do
    @houses = create_list(:house, 3)
  end

  after(:all) do
    House.delete([@houses[0].id, @houses[1].id, @houses[2].id])
  end

  subject(:make_request) do
    jsonapi_post '/api/v1/archons', payload
  end

  describe 'basic create' do
    let!(:attrs) { attributes_for(:archon) }

    let(:payload) do
      {
        data: {
          type: 'archons',
          attributes: {
            name: attrs[:name],
            set: attrs[:set],
            image_url: attrs[:image_url]
          },
          relationships: {
            house_one: {
              data: {
                id: @houses[0].id.to_s,
                type: 'houses'
              }
            },
            house_two: {
              data: {
                id: @houses[1].id.to_s,
                type: 'houses'
              }
            },
            house_three: {
              data: {
                id: @houses[2].id.to_s,
                type: 'houses'
              }
            }
          }
        }
      }
    end

    it 'creates the resource' do
      expect(&method(:make_request)).to change { Archon.count }.by(1)
      archon = Archon.last

      assert_payload(:archon, archon, json_item)
    end
  end
end

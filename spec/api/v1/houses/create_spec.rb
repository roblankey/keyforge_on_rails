require 'rails_helper'

RSpec.describe 'houses#create', type: :request do
  subject(:make_request) do
    jsonapi_post '/api/v1/houses', payload
  end

  describe 'basic create' do
    let!(:attrs) { attributes_for(:house) }

    let(:payload) do
      {
        data: {
          type: 'houses',
          attributes: {
            name: attrs[:name],
            image_path: attrs[:image_path]
          }
        }
      }
    end

    it 'creates the resource' do
      expect(&method(:make_request)).to change { House.count }.by(1)
      house = House.last
      assert_payload(:house, house, json_item)
    end
  end
end

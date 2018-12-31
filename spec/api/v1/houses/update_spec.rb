require 'rails_helper'

RSpec.describe 'houses#update', type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/houses/#{house.id}", payload
  end

  describe 'basic update' do
    let!(:house) { create(:house) }
    let!(:new) { attributes_for(:house) }

    let(:payload) do
      {
        data: {
          id: house.id.to_s,
          type: 'houses',
          attributes: {
            image_path: new[:image_path]
          }
        }
      }
    end

    it 'updates the resource' do
      expect {
        make_request
      }.to change { house.reload.attributes }
      assert_payload(:house, house, json_item)

      expect(house.name).not_to eq(new[:name])
      expect(house.image_path).to eq(new[:image_path])
    end
  end
end

require 'rails_helper'

RSpec.describe "houses#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/houses", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'houses',
          attributes: {
            name: "Some cool house",
            image_path: "the location where the image is at"
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { House.count }.by(1)
      house = House.last

      assert_payload(:house, house, json_item)
    end
  end
end

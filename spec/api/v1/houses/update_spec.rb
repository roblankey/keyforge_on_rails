require 'rails_helper'

RSpec.describe "houses#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/houses/#{house.id}", payload
  end

  describe 'basic update' do
    let!(:house) { create(:house) }

    let(:payload) do
      {
        data: {
          id: house.id.to_s,
          type: 'houses',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { house.reload.attributes }
      assert_payload(:house, house, json_item)

      # ... assert updates attributes ...
    end
  end
end

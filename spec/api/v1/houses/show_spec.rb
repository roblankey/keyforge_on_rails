require 'rails_helper'

RSpec.describe 'houses#show', type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/houses/#{house.id}", params: params
  end

  describe 'basic fetch' do
    let!(:house) { create(:house) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:house, house, json_item)
    end
  end
end

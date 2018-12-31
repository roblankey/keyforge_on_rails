require 'rails_helper'

RSpec.describe "archons#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/archons/#{archon.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:archon) { create(:archon) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:archon, archon, json_item)
    end
  end
end

require 'rails_helper'

RSpec.describe "archons#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/archons/#{archon.id}", payload
  end

  describe 'basic update' do
    let!(:archon) { create(:archon) }

    let(:payload) do
      {
        data: {
          id: archon.id.to_s,
          type: 'archons',
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
      }.to change { archon.reload.attributes }
      assert_payload(:archon, archon, json_item)

      # ... assert updates attributes ...
    end
  end
end

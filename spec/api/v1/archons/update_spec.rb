require 'rails_helper'

RSpec.describe "archons#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/archons/#{archon.id}", payload
  end

  describe 'basic update' do
    let!(:archon) { create(:archon) }
    let!(:new_archon) { build(:archon) }

    let(:payload) do
      {
        data: {
          id: archon.id.to_s,
          type: 'archons',
          attributes: {
            name: new_archon.name
          }
        }
      }
    end

    it 'updates the resource' do
      expect {
        make_request
      }.to change { archon.reload.attributes }
      assert_payload(:archon, archon, json_item)
      expect(archon.name).to eq(new_archon.name)
    end
  end
end

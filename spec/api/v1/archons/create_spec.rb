require 'rails_helper'

RSpec.describe 'archons#create', type: :request do
  subject(:make_request) do
    jsonapi_post '/api/v1/archons', payload
  end

  describe 'basic create' do
    let!(:attrs) { attributes_for(:archon) }
    let!(:house1) { create(:house) }
    let!(:house2) { create(:house) }
    let!(:house3) { create(:house) }

    let(:payload) do
      {
        data: {
          type: 'archons',
          attributes: {
            name: attrs[:name],
            set: attrs[:set],
            house_one_id: house1.id,
            house_two_id: house2.id,
            house_three_id: house3.id
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

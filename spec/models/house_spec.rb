require 'rails_helper'

RSpec.describe House, type: :model do
  describe 'create' do
    it 'cannot create a house without name' do
      house = House.create(name: nil)
      expect(house).to be_invalid
    end

    it 'cannot create a duplicate house' do
      house = House.create(name: create(:house).name)
      expect(house).to be_invalid
    end

    it 'can create a correct house' do
      attrs = attributes_for(:house)
      house = House.create(name: attrs[:name], image_url: attrs[:image_url])
      expect(house).to be_valid
    end
  end
end

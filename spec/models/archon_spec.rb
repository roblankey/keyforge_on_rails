require 'rails_helper'

RSpec.describe Archon, type: :model do
  before(:all) do
    @attrs = attributes_for(:archon)
    @houses = create_list(:house, 3)
  end

  describe 'create' do
    it 'requires name' do
      archon = Archon.create(name: nil,
                             set: @attrs[:set],
                             image_url: @attrs[:image_url],
                             house_one: @houses[0],
                             house_two: @houses[1],
                             house_three: @houses[2])
      expect(archon).to be_invalid
    end

    it 'requires set' do
      archon = Archon.create(name: @attrs[:name],
                             set: nil,
                             image_url: @attrs[:image_url],
                             house_one: @houses[0],
                             house_two: @houses[1],
                             house_three: @houses[2])
      expect(archon).to be_invalid
    end

    it 'can be successful' do
      archon = Archon.create(name: @attrs[:name],
                             set: @attrs[:set],
                             image_url: @attrs[:image_url],
                             house_one: @houses[0],
                             house_two: @houses[1],
                             house_three: @houses[2])
      expect(archon).to be_valid
    end
  end
end

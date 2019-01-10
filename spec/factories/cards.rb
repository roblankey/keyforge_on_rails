FactoryBot.define do
  factory :card do
    sequence(:name) { |n| "#{Faker::FunnyName.name_with_initial}-#{n}" }
    body { 'Card Body text' }
    image_url { Faker::File.file_name }
    card_type { 'Creature' }
    association :house, factory: :house
    subtype_1 { 'Robot' }
    subtype_2 { 'Human' }
    maverick { false }
    flavor_text { 'Flavor Text' }
    bonus_aember { 1 }
  end
end

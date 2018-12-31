# This will guess the House class
FactoryBot.define do
  factory :house do
    name { Faker::AquaTeenHungerForce.character }
    image_url { Faker::File.file_name }
  end
end

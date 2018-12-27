FactoryBot.define do
    factory :house do
      name { Faker::AquaTeenHungerForce.character }
      image_path { Faker::File.file_name }
    end
  end
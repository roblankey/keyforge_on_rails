# This will guess the Archon class
FactoryBot.define do
  factory :archon do
    name { Faker::HarryPotter.character }
    self.set { Faker::HarryPotter.book }
    image_url { Faker::File.file_name }

    association :house_one, factory: :house
    association :house_two, factory: :house
    association :house_three, factory: :house
  end
end

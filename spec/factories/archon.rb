# This will guess the Archon class
FactoryBot.define do
  factory :archon do
    name { Faker::HarryPotter.character }
    self.set { Faker::HarryPotter.book }
  end
end

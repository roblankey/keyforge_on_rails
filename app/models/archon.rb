class Archon < ApplicationRecord
  has_one :house, as: :house_one, foreign_key: :house_one_id 
  has_one :house, as: :house_two, foreign_key: :house_two_id
  has_one :house, as: :house_three, foreign_key: :house_three_id
end

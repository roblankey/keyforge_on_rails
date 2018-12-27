class Archon < ApplicationRecord
  validates :name, :set, presence: true
  validates :name, uniqueness: true
  
  has_one :house, as: :house_one, foreign_key: :house_one_id 
  has_one :house, as: :house_two, foreign_key: :house_two_id
  has_one :house, as: :house_three, foreign_key: :house_three_id
end

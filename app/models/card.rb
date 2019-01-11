class Card < ApplicationRecord
  validates :name, :card_type, presence: true
  validates :name, uniqueness: true

  belongs_to :house
end

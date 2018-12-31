class Archon < ApplicationRecord
  validates :name, :set, presence: true
  validates :name, uniqueness: true

  belongs_to :house_one, class_name: 'House'
  belongs_to :house_two, class_name: 'House'
  belongs_to :house_three, class_name: 'House'
end

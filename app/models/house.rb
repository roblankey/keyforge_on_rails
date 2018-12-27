class House < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true

    belongs_to :archon, optional: true
end

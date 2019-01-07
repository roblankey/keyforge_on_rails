class CardResource < ApplicationResource
  type :cards
  model Card

  belongs_to :archon, foreign_key: :archon_id, resource: ArchonResource, scope: -> { Archon.all }
  belongs_to :house, foreign_key: :house_id, resource: HouseResource, scope: -> { House.all }
end

class SerializableCard < JSONAPI::Serializable::Resource
  type :cards

  attribute :name
  attribute :body
  attribute :card_type
  attribute :subtype_1
  attribute :subtype_2
  attribute :maverick
  attribute :flavor_text
  attribute :image_url
  attribute :bonus_aember
  belongs_to :house
  belongs_to :archon
end

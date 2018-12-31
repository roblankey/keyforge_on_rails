# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableArchon < JSONAPI::Serializable::Resource
  type :archons

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  attribute :name
  attribute :set
  attribute :image_url
  
  belongs_to :house_one
  belongs_to :house_two
  belongs_to :house_three
end

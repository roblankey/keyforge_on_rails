JsonapiSpecHelpers::Payload.register(:card) do
  key(:name, String)
  key(:body, String, allow_nil: true)
  key(:image_url, String, allow_nil: true)
  key(:card_type, String)
  key(:subtype_1, String, allow_nil: true)
  key(:subtype_2, String, allow_nil: true)
  key(:maverick, allow_nil: true)
  key(:flavor_text, String, allow_nil: true)
  key(:bonus_aember, Integer, allow_nil: true)
end

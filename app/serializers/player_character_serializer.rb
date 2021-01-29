class PlayerCharacterSerializer
  include JSONAPI::Serializer
  attributes :name, :backstory, :class, :race, :level, :character_sheet_url
end

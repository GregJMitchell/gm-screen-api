class CampaignShowSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :image

  attribute :relations do |campaign|
    {
      npcs: campaign.npcs,
      factions: campaign.factions,
      cities: campaign.cities,
      player_characters: campaign.player_characters,
      storylines: campaign.storylines,
      quests: campaign.quests
    }
  end
end

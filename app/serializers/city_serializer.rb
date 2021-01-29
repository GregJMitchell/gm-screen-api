class CitySerializer
  include JSONAPI::Serializer
  attributes :name, :gov_type, :population, :description

  attribute :faction do |city|
    {faction: city.faction.name}
  end
end

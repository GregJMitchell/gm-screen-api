class FactionSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :capitol
end

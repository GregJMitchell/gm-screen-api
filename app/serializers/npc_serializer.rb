class NpcSerializer
  include JSONAPI::Serializer
  attributes :name, :backstory, :alignment
end

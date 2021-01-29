class QuestSerializer
  include JSONAPI::Serializer
  attributes :name, :description, :rewards
end

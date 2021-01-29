class StorylineSerializer
  include JSONAPI::Serializer
  attributes :name, :description
end

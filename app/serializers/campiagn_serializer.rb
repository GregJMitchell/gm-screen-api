class CampiagnSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :image
end

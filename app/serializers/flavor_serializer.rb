class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :ingredients, :img_url
end

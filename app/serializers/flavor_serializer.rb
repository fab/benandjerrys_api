class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :ingredients, :img_url

  def name
    object.name.titleize
  end
end

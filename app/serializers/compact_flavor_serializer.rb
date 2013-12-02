class CompactFlavorSerializer < ActiveModel::Serializer
  attributes :id, :name

  def name
    object.name.titleize
  end
end

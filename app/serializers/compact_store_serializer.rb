class CompactStoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  def name
    object.name.titleize
  end
end

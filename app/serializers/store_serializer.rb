class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  def name
    object.name.titleize
  end

  has_many :flavors, serializer: CompactFlavorSerializer
end

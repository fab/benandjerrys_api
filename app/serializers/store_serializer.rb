class StoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :address

  has_many :flavors, serializer: CompactFlavorSerializer
end

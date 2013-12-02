class StoreSerializer < ApplicationSerializer
  attributes :id, :name, :address

  has_many :flavors, serializer: CompactFlavorSerializer
end

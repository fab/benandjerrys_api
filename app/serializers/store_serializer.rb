class StoreSerializer < ApplicationSerializer
  attributes :id, :name, :address

  has_many :flavors, serializer: CompactFlavorSerializer

  def flavors
    object.flavors.order(:name)
  end
end

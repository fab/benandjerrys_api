class ApplicationSerializer < ActiveModel::Serializer
  def name
    object.name.titleize
  end
end

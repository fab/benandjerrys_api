class Store < ActiveRecord::Base
  has_and_belongs_to_many :flavors

  def address
    "#{street.titleize}, #{city.titleize}, #{state} #{zipcode}"
  end
end

class Store < ActiveRecord::Base
  has_and_belongs_to_many :flavors

  def address
    "#{format_street}, #{city.titleize}, #{state} #{zipcode}"
  end

  def format_street
    street.split(' ').map(&:capitalize).join(' ')
  end
end

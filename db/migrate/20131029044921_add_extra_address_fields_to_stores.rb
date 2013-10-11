class AddExtraAddressFieldsToStores < ActiveRecord::Migration
  def change
    rename_column :stores, :address, :street
    add_column :stores, :city, :string
    add_column :stores, :state, :string
    add_column :stores, :zipcode, :string
  end
end

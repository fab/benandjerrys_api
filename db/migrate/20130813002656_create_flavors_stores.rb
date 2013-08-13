class CreateFlavorsStores < ActiveRecord::Migration
  def change
    create_table :flavors_stores, id: false do |t|
      t.references :flavor
      t.references :store
    end

    add_index :flavors_stores, [:flavor_id, :store_id], unique: true
  end
end

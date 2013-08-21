class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :name
      t.string :description
      t.string :ingredients
      t.string :img_url

      t.timestamps
    end
  end
end

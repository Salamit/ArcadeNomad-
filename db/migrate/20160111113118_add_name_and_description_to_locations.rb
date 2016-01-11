class AddNameAndDescriptionToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    add_column :locations, :description, :string
  end
end

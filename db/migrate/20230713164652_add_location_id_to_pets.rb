class AddLocationIdToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :location_id, :integer
    remove_column :pets, :location, :string
  end
end

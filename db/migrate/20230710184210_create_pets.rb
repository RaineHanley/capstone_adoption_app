class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.string :breed
      t.integer :days_in_shelter
      t.integer :kennel_number
      t.string :location

      t.timestamps
    end
  end
end

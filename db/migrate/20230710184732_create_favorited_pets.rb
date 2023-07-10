class CreateFavoritedPets < ActiveRecord::Migration[7.0]
  def change
    create_table :favorited_pets do |t|
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
  end
end

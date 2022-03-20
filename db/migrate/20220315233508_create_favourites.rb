class CreateFavourites < ActiveRecord::Migration[6.1]
  def change
    create_table :favourites do |t|
      t.boolean :favourite
      t.references :user
      t.references :recipe

      t.timestamps
    end
  end
end

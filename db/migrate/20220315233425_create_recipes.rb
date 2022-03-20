class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :prep_time
      t.references :user

      t.timestamps
    end
  end
end

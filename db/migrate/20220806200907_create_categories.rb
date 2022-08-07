class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.belongs_to :movie, null: false, foreign_key: true
      t.belongs_to :movie_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end

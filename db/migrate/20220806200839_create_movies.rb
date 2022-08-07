class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :sinopse
      t.string :cover_url
      t.datetime :published_at
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end

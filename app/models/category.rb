class Category < ApplicationRecord
  belongs_to :movie
  belongs_to :movie_genre
end

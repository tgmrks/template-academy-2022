class Movie < ApplicationRecord
  belongs_to :director
  has_many :casts
  has_many :artists, through: :casts
  has_many :categories
  has_many :movie_genres, through: :categories

  validates :title, presence: true
  validates :title, length: { minimum: 2 }, allow_blank: true
  validates :cover_url, presence: true
  validates :sinopse, presence: true

end

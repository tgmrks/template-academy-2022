class MovieGenre < ApplicationRecord
    has_many :categories
    has_many :movies, through: :category
    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false, allow_blank: true }
    validates :name, length: { minimum: 2 }, allow_blank: true
end

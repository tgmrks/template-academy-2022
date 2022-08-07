class Artist < ApplicationRecord
    has_many :casts
    has_many :movies, through: :casts
    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false, allow_blank: true }
    validates :name, length: { minimum: 2 }, allow_blank: true
end

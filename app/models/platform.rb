class Platform < ApplicationRecord
  has_many :platform_movies
  has_many :movies, through: :platform_movies
end

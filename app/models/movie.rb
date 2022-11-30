class Movie < ApplicationRecord
  has_many :platform_movies
  has_many :platforms, through: :platform_movies
end

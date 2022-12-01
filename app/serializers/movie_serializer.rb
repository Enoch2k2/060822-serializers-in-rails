class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_date, :description

  has_many :platforms
end

class PlatformSerializer < ActiveModel::Serializer
  attributes :id, :name, :monthly_cost

  has_many :movies
end

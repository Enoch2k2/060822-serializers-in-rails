class MoviePlatformCountSerializer < ActiveModel::Serializer
  attributes :title, :platform_count

  def platform_count
    self.object.platforms.length
  end
end

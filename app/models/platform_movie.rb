class PlatformMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :platform
end

class Tag < ApplicationRecord
  has_many :repository_tags
  has_many :repositories, :through => :repository_tags
end

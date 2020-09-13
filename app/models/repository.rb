class Repository < ApplicationRecord
  has_many :repository_tags
  has_many :tags, through: :repository_tags
  accepts_nested_attributes_for :tags
end

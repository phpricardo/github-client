class RepositoryTag < ApplicationRecord
  belongs_to :repository
  belongs_to :tag
end

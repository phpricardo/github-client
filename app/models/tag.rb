class Tag < ApplicationRecord
  has_many :repository_tags
  has_many :repositories, :through => :repository_tags

  # include PgSearch::Model
  # pg_search_scope :search_repositories_by_tag, against: [:name],
  # associated_against: {
  #   repository_tags: :repository_id
  # }

  scope :search_repositories_by_tag, -> (tag) {
    select('repositories.*')
    .joins(:repository_tags, :repositories)
    .where('name ilike ?', "%#{tag}%")
  }
  
end

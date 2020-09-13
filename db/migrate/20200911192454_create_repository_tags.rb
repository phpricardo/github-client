class CreateRepositoryTags < ActiveRecord::Migration[6.0]
  def change
    create_table :repository_tags do |t|
      t.belongs_to :tag
      t.belongs_to :repository
      t.timestamps
    end
  end
end

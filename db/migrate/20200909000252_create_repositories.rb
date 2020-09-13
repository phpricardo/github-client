class CreateRepositories < ActiveRecord::Migration[6.0]
  def change
    create_table :repositories do |t|
      t.integer :repository_code
      t.string :repository_name
      t.text :respository_description
      t.string :repository_html_url

      t.timestamps
    end
  end
end

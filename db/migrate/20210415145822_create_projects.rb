class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :github_link
      t.string :youtube_demo
      t.text :project_description

      t.timestamps
    end
  end
end

class CreateProjectsEditions < ActiveRecord::Migration
  def change
    create_table :projects_editions do |t|
      t.integer :project_id
      t.integer :edition_id

      t.timestamps
    end
  end
end

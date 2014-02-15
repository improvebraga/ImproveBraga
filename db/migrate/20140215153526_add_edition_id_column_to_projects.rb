class AddEditionIdColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :edition_id, :integer
  end
end

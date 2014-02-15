class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :done
      t.next :to-do
      t.string :authors
      t.string :website

      t.timestamps
    end
  end
end

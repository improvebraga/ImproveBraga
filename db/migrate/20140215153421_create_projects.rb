class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :done
      t.text :todo
      t.string :authors
      t.string :website

      t.timestamps
    end
  end
end

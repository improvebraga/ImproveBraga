class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :description
      t.string :site
      t.datetime :date

      t.timestamps
    end
  end
end

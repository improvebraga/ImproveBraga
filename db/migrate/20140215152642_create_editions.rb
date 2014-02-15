class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.string :date
      t.string :local
      t.string :photos
      t.string :newsletter

      t.timestamps
    end
  end
end

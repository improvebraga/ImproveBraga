class AddImageToMedia < ActiveRecord::Migration
  def change
    add_column :media, :image_link, :text
  end
end

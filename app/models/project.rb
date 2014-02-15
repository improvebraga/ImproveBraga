class Project < ActiveRecord::Base
	#attr_accessor for :thumbnail
	has_attached_file :thumbnail,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end

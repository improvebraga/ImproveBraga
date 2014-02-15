class Project < ActiveRecord::Base
	has_attached_file :thumbnail,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end

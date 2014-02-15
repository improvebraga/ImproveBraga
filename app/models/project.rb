class Project < ActiveRecord::Base
	#attr_accessor for :thumbnail
	has_many :pictures
	accepts_nested_attributes_for :pictures,
		:allow_destroy => true,
 		:reject_if     => :all_blank
	has_and_belongs_to_many :editions
	has_attached_file :thumbnail,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end

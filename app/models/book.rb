class Book < ActiveRecord::Base
	mount_uploader :cover, CoverUploader
	validates :cover, presence: true
end

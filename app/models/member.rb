class Member < ApplicationRecord
	include ImageUploader::Attachment(:image)
end

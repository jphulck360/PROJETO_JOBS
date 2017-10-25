class Career < ApplicationRecord
	has_attached_file :foto_c
	validates_attachment_content_type :foto_c, :content_type => ["image/png", "image/jpeg", "image/jpg", "image/gif"]
end

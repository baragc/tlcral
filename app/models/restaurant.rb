class Restaurant < ActiveRecord::Base
	has_attached_file :image, style: {image: "200x", thumb: "100x100"}, default_url: "default.gif"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

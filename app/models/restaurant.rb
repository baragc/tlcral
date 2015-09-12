class Restaurant < ActiveRecord::Base
	if Rails.env.developmant?
		has_attached_file :image, style: {image: "200x", thumb: "100x100"}, default_url: "default.gif"
	else
		has_attached_file :image, style: {image: "200x", thumb: "100x100"}, default_url: "default.gif",
		:storage => :dropbox,
      	:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
      	:path => "tlcral/:id_:filename"
	end

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

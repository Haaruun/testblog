class Blog < ActiveRecord::Base
	 mount_uploader :image, ImageUploader

	 scope :sort, lambda {where(:id => 2)}
end

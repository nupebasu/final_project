class Study < ActiveRecord::Base

  validates :image, :presence => true

  validates :user_id, :presence => true

  mount_uploader :image, ImageUploader

end

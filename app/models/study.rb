class Study < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :body_parts


  validates :user_id, :presence => true

  mount_uploader :image, ImageUploader

end

class Study < ActiveRecord::Base

  validates :diagnosis, :presence => true
  validates :suject, :presence => true
  validates :accession, :uniqueness => true

  belongs_to :user
  belongs_to :category
  belongs_to :body_parts


  validates :user_id, :presence => true

  mount_uploader :image, ImageUploader

end

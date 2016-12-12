class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  mount_uploader :photo, PhotoUploader

  delegate :photo, :name, to: :user, prefix: true 
  
  acts_as_votable
end
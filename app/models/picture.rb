require 'carrierwave/orm/activerecord'

class Picture < ActiveRecord::Base
  validates :name, presence: true
  validates :image, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
end

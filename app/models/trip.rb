class Trip < ApplicationRecord

	belongs_to :user
	has_many :itineraries
	has_many :photos
	has_many :partners
			
	mount_uploader :image, ImageUploader

	validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  
end

class Contact < ApplicationRecord

	mount_uploader :image, ImageUploader

	belongs_to :user
	
	validates :name, presence: true
	validates :phone_number, presence: true
end

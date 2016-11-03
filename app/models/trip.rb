class Trip < ApplicationRecord
	belongs_to :user
	
	mount_uploader :image, ImageUploader

	validates :name, presence: true, uniqueness: true
	validates :dates, presence: true
  validates :return_date, presence: true
  validates :city, presence: true
  
end

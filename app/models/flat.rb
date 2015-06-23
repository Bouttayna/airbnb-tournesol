class Flat < ActiveRecord::Base
  has_many :bookings
  belongs_to :user

  validates :title, presence:true
  validates :description, presence:true
  validates :address, presence:true
  validates :city, presence:true
  validates :capacity, presence:true
  validates :price, presence:true
end


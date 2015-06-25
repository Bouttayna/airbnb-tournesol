class Flat < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :title, presence:true
  validates :description, presence:true
  validates :address, presence:true
  validates :city, presence:true
  validates :capacity, presence:true
  validates :price, presence:true

  has_attached_file :picture,
     styles: { medium: "500x500>", thumb: "100x100" }

   validates_attachment_content_type :picture,
     content_type: /\Aimage\/.*\z/


end


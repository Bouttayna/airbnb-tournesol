class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :flat

  validates :user_id, presence:true
  validates :arrival, presence:true
  validates :departure, presence:true
  validates :number_of_travellers, presence:true
end

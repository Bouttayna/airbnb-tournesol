class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :flat

  validates :user_id, presence:true
  validates :arrival, presence:true
  validates :departure, presence:true
  validates :number_of_travellers, presence:true
  validates_inclusion_of :state, in: ["Pending", "Accepted", "Rejected"]

  after_create :send_email
  # validate :locator_cant_be_proprio

  # private

  # def locator_cant_be_proprio
  #    if @current_user.id == @flat.user_id.id
  #      errors.add(:user_id, "you can't book your own flat ! :O")
  #    end
  #  end

  private

  def send_email
    UserMailer.booking_user_confirmation(self).deliver_now
    UserMailer.booking_owner_confirmation(self).deliver_now
  end
end


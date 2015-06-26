class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to AirBnB')
  end

  # def booking_confirmation(user,booking_id)
  #   @user = user
  #   @booking = booking
  #   mail(to: @user.email, subject: 'Booking Confirmation')
  # end

  def booking_user_confirmation(booking)
    @owner = booking.flat.user
    @user = booking.user
    @booking = booking

    mail(to: @user.email, subject: 'Booking Confirmation')
  end

  def booking_owner_confirmation(booking)
    @owner = booking.flat.user
    @user = booking.user
    @booking = booking

    mail(to: @owner.email, subject: 'Reservation Confirmation')
  end


end

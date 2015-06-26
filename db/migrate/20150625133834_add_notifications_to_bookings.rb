class AddNotificationsToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :notifications, :integer, default: 0
  end
end

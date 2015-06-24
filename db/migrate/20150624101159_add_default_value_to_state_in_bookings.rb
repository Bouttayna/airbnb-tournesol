class AddDefaultValueToStateInBookings < ActiveRecord::Migration
  def change
    change_column(:bookings, :state, :string, default: "Pending")
  end
end

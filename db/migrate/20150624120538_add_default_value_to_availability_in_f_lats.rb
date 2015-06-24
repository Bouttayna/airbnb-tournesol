class AddDefaultValueToAvailabilityInFLats < ActiveRecord::Migration
  def change
    change_column(:flats, :availability, :boolean, default: false)
  end
end

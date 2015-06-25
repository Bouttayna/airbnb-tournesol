class AddCoordinatesToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :Flats, :string
    add_column :flats, :latitude, :float
    add_column :flats, :longitude, :float
  end
end

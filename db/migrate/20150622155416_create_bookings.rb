class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :title
      t.string :state
      t.references :user, index: true, foreign_key: true
      t.references :flat, index: true, foreign_key: true
      t.date :arrival
      t.date :departure
      t.integer :number_of_travellers

      t.timestamps null: false
    end
  end
end

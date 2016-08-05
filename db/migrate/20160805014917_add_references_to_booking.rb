class AddReferencesToBooking < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :flight, index: true
    add_foreign_key :bookings, :flights
  end
end

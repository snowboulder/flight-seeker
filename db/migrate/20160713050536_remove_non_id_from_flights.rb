class RemoveNonIdFromFlights < ActiveRecord::Migration[5.0]
  def change
    remove_column :flights, :from_airport
    remove_column :flights, :to_airport
  end
end

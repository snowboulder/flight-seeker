class RemoveFromAirportAndToAirportColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :airports, :from_airport
    remove_column :airports, :to_airport
  end
end

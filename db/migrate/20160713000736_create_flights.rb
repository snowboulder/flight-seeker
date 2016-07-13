class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.string :from_airport
      t.integer :to_airport_id
      t.string :to_airport
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end

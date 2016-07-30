class Flight < ApplicationRecord
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  attr_accessor :quantity

  def event_date_formatted
    date.strftime("%m/%d/%Y")
  end
end

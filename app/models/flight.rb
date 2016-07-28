class Flight < ApplicationRecord
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"

  def event_date_formatted
    event_date.strftime("%m/%d/%Y")
  end
  
end

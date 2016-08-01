class Flight < ApplicationRecord
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  attr_accessor :quantity

  def formatted_date
    date.strftime("%m/%d/%Y")
  end

  def self.all_dates
    all.collect { |f| f.formatted_date }.uniq
  end

  def self.search(params)
    if params[:search]
      Flight.date.where(from_airport_id: params[:from_airport],
                        to_airport_id: params[:to_airport])
            .includes(:from_airport, :to_airport)
    end
  end
end

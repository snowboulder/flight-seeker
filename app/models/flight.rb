class Flight < ApplicationRecord
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  attr_accessor :quantity

  def formatted_date
    date.strftime("%m/%d/%Y")
  end

  def self.all_dates
    all.collect { |f| [f.formatted_date, f.date.to_date] }.uniq
  end

  def self.on_date(date)
    where(date: date.beginning_of_day..date.end_of_day)
  end

  def self.search(params)
    if params[:search]
      Flight.on_date(params[:date].to_date)
            .where(from_airport_id: params[:from_airport], to_airport_id: params[:to_airport])
            .includes(:from_airport, :to_airport)
    end
  end
end

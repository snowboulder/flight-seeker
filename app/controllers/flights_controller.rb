class FlightsController < ApplicationController

  def index
    @airport_names = Airport.all.collect { |a| [a.name, a.id] }
    @flight_dates = Flight.all_dates
    @results = Flight.search(params)
    #@flights = Flight.all
    #@airports = Airport.all
  end

end

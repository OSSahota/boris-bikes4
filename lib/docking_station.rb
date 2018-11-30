# uses given bikes
require_relative 'bike'
class DockingStation
  attr_accessor :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  # creates a new bike
  def dock(bike)
     fail 'Station Full' if full?
     @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end


end

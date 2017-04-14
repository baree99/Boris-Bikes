class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
    20.times do
      @bikes << Bike.new
    end
  end

  def release_bike
    return raise "No bike available" if empty?
    @bikes.pop
  end

  def dock(bike)
    return raise "Docking station is full" if full?
    @bikes << bike
  end

  private
    def full?
      return true if @bikes.count == 20
      false
    end

    def empty?
      return true if @bikes.count == 0
      false
    end
end

class Bike
  def working?
    true
  end
end

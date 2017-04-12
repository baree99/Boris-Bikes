class DockingStation < Bike

attr_reader :docked

def initialize
 @docked = docked
end

def release_bike
    Bike.new
    self.docked = false
  end
end

def return_bike
    #Bike.new
    @docked = true
  end
end

class Bike
  def working?
    true
  end
end

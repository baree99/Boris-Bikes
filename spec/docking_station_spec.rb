require 'docking_station'

describe DockingStation do
  describe ".release_bike" do
  station = DockingStation.new
  bike = station.release_bike
  it "should be an instace of bike" do
  bike.should be_an_instance_of Bike
  end
end
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

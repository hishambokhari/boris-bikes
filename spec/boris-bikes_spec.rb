require 'boris-bikes'
describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
 
    it "releases a bike that is working" do
        expect(subject.release_bike).to be_working

    end
    it {is_expected.to respond_to(:dock_bike)}

end

describe Bike do
    it {is_expected.to respond_to(:working?)}

   
end



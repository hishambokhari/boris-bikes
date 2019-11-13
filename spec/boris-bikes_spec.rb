require 'boris-bikes'
describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
 
    it "releases a bike that is working" do
        expect(subject.release_bike.working?).to eq(true)
    end

end

describe Bike do
    it {is_expected.to respond_to(:working?)}
end


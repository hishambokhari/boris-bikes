require 'boris-bikes'

    

    describe DockingStation do
        it { is_expected.to respond_to :release_bike}
        
        it "releases working bikes" do
            docking_station = DockingStation.new
            bike = docking_station.release_bike
            expect(bike).to be_working
         end
         it { is_expected.to respond_to(:dock).with(1).argument}

         it 'docks something' do
            bike = Bike.new
            expect(subject.dock(bike)).to eq bike
         end
        
        it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
            expect(subject.release_bike).to eq bike
        end
        describe '#release_bike' do
            it 'raises an error when there are no bkes available' do
            expect { subject.release_bike}.to raise_error "No bikes available"
            end
    
        end
    
     end

   

      



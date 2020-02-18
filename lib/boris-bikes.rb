require_relative 'bike'


class DockingStation

    attr_reader :bike
    def release_bike
    fail 'No bikes available' unless @bike
    
    end


    def dock(bike)
    bike #removed @bike = bike from here since attr_reader was created above
    end
   
end
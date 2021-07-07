#class Parking_Lot_Prob
#    puts "How many slots do you want?"
#   a = gets.chomp
#    def vehicle_in(vehicle_no, vehicle_color)
#        puts "enter value"
#      @vehicle_no = vehicle_no
#      puts vehicle_no
#     @vehicle_color = vehicle_color
#      puts vehicle_color
#    end
#    def toPark(vehicle_number, vehicle_color)
#        if self.vehicle
#            a == nil
#            puts "No Space is Empty"
#        else
#            self.vehicle = Vehicle.new()
#            a += 1
#        end
#  end
#  a = Vehicle.vehicle_in()
#  end

class Parking_Lot_Problem
    puts "How many slots do you want?"   
def initialize(slt)
    @slots = []
    slt.to_i
      slot_number = index + 1
      slots[index] = Slot.new(slot_number)
    end
    puts "Parking Slot =  #{slt} "

    def Vehicle_in(vehicle_number, vehicle_color)
        if self.vehicle
          puts 'Occcupied'
        else
          self.vehicle=Vehicle.new(vehicle_number, vehicle_color)
        end

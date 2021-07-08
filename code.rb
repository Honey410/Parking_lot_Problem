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

puts "Which Operation u want?"
puts "1 ADD Car"
puts "2 Remove Car"
puts "3 Status"
puts "4 Search Car With color"
puts "5 Search Car With Num"
puts "6 Park car in alloted slot"
puts "7 Entry time:"
puts "8 Exit time"
puts "9 Exit"

Operation = gets.chomp.to_i
case Operation
when 1
  CreateSlot
when 2
  remove_slot
when 3
  ShowStatus
when 4
  SearchData
when 5
  SearchSlot
when 7
  EntryTime
when 8
  ExitTime
else
  break
end

puts "How many slots do you want?"  
def CreateSlot()
  puts "Create parking Slot : "
  slots = gets.chomp.to_i
  i = 0
  while i < slots do
    parking_hash = {}
    puts "Park"
    plate_num = gets.chomp
    color = gets.chomp
    parking_hash['id'] = id+=1
    parking_hash['plate_num'] = plate_num
    parking_hash['color'] = color
    parking_hash['alloted'] = true
    i+=1
  end
end
def remove_slot
  
end 
def ExitTime
  puts "Slot want to Empty?"
  remove_id = gets.chomp.to_i
  if slots : length<remove_id
    puts "Invalid Slot"
      return 0
  end
end    
     

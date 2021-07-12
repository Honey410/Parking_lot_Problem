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

def Input_car(input)
	latest_parking_lot = nil
	input.split("\n").each do |input|
		sld_input = input.split(/\s/)
		command = sd_input[0]
		if  command == 'create_parking_lot'
			no_of_slots = sld_input[1]
			latest_parking_lot = Parking_Lot_problem.new(no_of_slots)
		else
			latest_parking_lot.send(command, *([sld_input[1], sld_input[2]].compact))
		end
	end
end

class Parking_Lot_problem
	def initialize(slots_num)
		@slots = []
		slots_num.to_i.times do |index|
			slot_number = index + 1
			slots[index] = Slot.new(slot_number)
		end
		puts "Create a parking lot with #{slots_num} slots"
	end

	def parking(vehicle_name, vehicle_num)
		if free_slot
			puts "Allocated slot number : #{free_slot.id }"
			free_slot.park(vehicle_name, vehicle_num)
		else
			parking_full
		end
	end

	def leave(slot_number)
		slots[slot_number.to_i - 1].free
		puts "Slot number #{ slot_number.to_i - 1 } is free "
	end

	def status
		puts "Slot No.\t Registration Number\t Colour"
		slots.each do | slot |
			puts "#{ slot.id }\t\t #{ slot.vehicle_num}\t\t #{ slot.vehicle_color }" unless (slot.free?)
		end
	end

	def registration_numbers_for_cars_with_colour (color)
		filtered_cars = filter_cars('vehicle_num', 'vehicle_color', color)
		puts filtered_cars.compact.join(',')
	end

	def slot_numbers_for_cars_with_colour (color)
		filtered_cars = filter_cars('id', 'vehicle_color', color)
		puts filtered_cars.compact.join(',')
	end

	def slot_number_for_number (vehicle_num)
		slot = slots.find do |slot|
			slot.vehicle_num == vehicle_num
		end
		puts slot ? slot.id : 'Not Found'
	end
	def free_slot
		slots.find do |slot|
				slot.free?
			end
	end
  def free?
		self.vehicle == nil
  end
	def parking_full
			puts "Sorry, parking lot is full"
	end

	def filter_cars(filtered_value, filter_by, filter)
		slots.collect do |slot|
			slot.send(filtered_value) if slot.send(filter_by) == filter
	end
	end
end
end
class VehicleDetail
	def initialize(vehicle_num, vehicle_color)
		@vehicle_num = vehicle_num
		@vehicle_color = vehicle_color
	end
end
class SlotDetail
	def initialize (id)
		@id = id
	end
	def park(vehicle_num, vehicle_color)
		self.vehicle = ::VehicleDetail.new(vehicle_num, vehicle_color)
	end
	def vehicle_num
		vehicle.vehicle_num if vehicle
	end
	def vehicle_color
		vehicle.vehicle_color if vehicle
	end
end
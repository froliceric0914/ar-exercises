require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

@store_name = gets.chomp

# error_employee = @store1.employees.create(first_name: "", last_name: "", hourly_rate: 20)
# binding.pry
errors = Store.create(name: @store_name).errors.messages #error validation
errors.each do |key, value|
	puts "#{key} => #{value}"
end

# errors = Employee.errors.messages
# errors.each do |key, value|
# 	puts "#{key} => #{value}"
# end

require_relative '../setup'
require_relative './exercise_1'
# require_relative './exercise_2'
# require_relative './exercise_3'
# require_relative './exercise_4'
# require_relative './exercise_5'



puts "Exercise 6"
puts "----------"
require 'pry' # in case you want to use binding.pry

# One-to-many association



e1 = @Store1.employees.create(first_name: nil, last_name: "Peterson", hourly_rate: 60)
e2 = @Store1.employees.create(first_name: "Jason", last_name: "w", hourly_rate: 70)
e3 = @Store2.employees.create(first_name: "Quin", last_name: nil, hourly_rate: 65)
e4 = @Store2.employees.create(first_name: "Yvee", last_name: "y", hourly_rate: 30000)
binding.pry

puts equit
# e5 = Employee.create!(first_name: "Eric", last_name: "y", hourly_rate: 50)
# puts e5.valid?
 raise "this should not be valid" if e1.valid? 
 raise "this should be valid" if !e2.valid?
 raise "this should not be valid" if e3.valid? 
 raise "this should not be valid" if e4.valid? 


# Your code goes here ...

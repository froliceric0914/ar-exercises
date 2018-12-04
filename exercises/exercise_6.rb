require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
    belongs_to :Stores
end

@Store1.employees.create(first_name: "Khurram", last_name: "Peterson", hourly_rate: 60)
@Store1.employees.create(first_name: "Jason", last_name: "w", hourly_rate: 70)
@Store2.employees.create(first_name: "Quin", last_name: "x", hourly_rate: 65)
@Store2.employees.create(first_name: "Yvee", last_name: "y", hourly_rate: 75)

# Your code goes here ...

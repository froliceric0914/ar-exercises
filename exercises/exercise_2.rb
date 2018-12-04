require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find(1)
# @store2 = Store.find(2) 
## load the store x (id =x) and assign it to an instance variable
# # puts @store1

# # Your code goes here ...

@store1.update(name:"Queen_street")

# @Store1.update(name:"King_street") 
## other option to do so

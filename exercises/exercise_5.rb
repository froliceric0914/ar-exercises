require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum(:annual_revenue)
puts "total revenure is #{@total_revenue}"

@avg_revenue = Store.average(:annual_revenue)
puts "average revenure is #{@avg_revenue}"

@store_revenue_more_than_1M = Store.where("annual_revenue > 1000000").count
puts "total number of store with the revenure  > 1M is #{@store_revenue_more_than_1M}"

# Your code goes here ...

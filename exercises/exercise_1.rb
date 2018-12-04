require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
end

@Store1 = Store.create!(name:"Burnaby", annual_revenue:300000, mens_apparel: true, womens_apparel: true)
@Store2 = Store.create!(name:"Richmond", annual_revenue:1260000, mens_apparel: false, womens_apparel: true)
@Store3 = Store.create!(name:"Gastown", annual_revenue:190000, mens_apparel: true, womens_apparel: false)


puts Store.count
# Your code goes below here ...

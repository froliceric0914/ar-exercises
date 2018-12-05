require_relative '../setup'

puts "Exercise 1"
puts "----------"
 

@Store1 = Store.create!(name:"Burnaby", annual_revenue:300000, mens_apparel: true, womens_apparel: true)
@Store2 = Store.create!(name:"Richmond", annual_revenue:1260000, mens_apparel: false, womens_apparel: true)
@Store3 = Store.create!(name:"Gastown", annual_revenue:190000, mens_apparel: true, womens_apparel: false)
Store.create!(name:"Surrey", annual_revenue:224000, mens_apparel: true, womens_apparel: false)
Store.create!(name:"Whistler", annual_revenue:1900000, mens_apparel: true, womens_apparel:false)
Store.create!(name:"Yaletown", annual_revenue:430000, mens_apparel: true, womens_apparel: true)

puts Store.count
# Your code goes below here ...

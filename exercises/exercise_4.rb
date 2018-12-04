require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


Store.create!(name:"Surrey", annual_revenue:224000, mens_apparel: false, womens_apparel: true)
Store.create!(name:"Whistler", annual_revenue:1900000, mens_apparel: true, womens_apparel:false)
Store.create!(name:"Yaletown", annual_revenue:430000, mens_apparel: true, womens_apparel: true)


@mens_stores = Store.where("mens_apparel=true AND womens_apparel=false")

# Loop through each of these stores and output their name and annual revenue on each line.
# @mens_stores.all.each do |store|
#     puts [store.name, store.annual_revenue]
# end

# puts @mens_collection
@womens_stores_less_revenue = Store.where("womens_apparel=true AND mens_apparel=false AND annual_revenue < 1000000")
@womens_stores_less_revenue.each do |c|
	puts c.name
    puts c.annual_revenue
end
# @great_womens_stores.all.each do |store|

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
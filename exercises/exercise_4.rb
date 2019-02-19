require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(
  name: 'Surrey', 
  annual_revenue: 224000, 
  mens_apparel: false,
  womens_apparel: true
)

Store.create(
  name: 'Whistler', 
  annual_revenue: 1900000, 
  mens_apparel: true,
  womens_apparel: false
)

Store.create(
  name: 'Yaletown', 
  annual_revenue: 430000, 
  mens_apparel: true,
  womens_apparel: true
)

#select mens stores
@mens_stores = Store.where(mens_apparel: true)

#output name and annual revenue
@mens_stores.each do |mens_store|
  puts "name: #{mens_store.name}, annual revenue: #{mens_store.annual_revenue}"
end

#selects womens stores that make less then $1M annual revenue
@womens_stores = Store.where("womens_apparel = true and annual_revenue < #{1000000}")

#loop through selected stores
@womens_stores.each do |womens_store|
  puts "name: #{womens_store.name}, annual revenue: #{womens_store.annual_revenue}"
end

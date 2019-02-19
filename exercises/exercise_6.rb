require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Mike", 
  last_name: "Snow", 
  hourly_rate: 201
)

@store2.employees.create(
  first_name: "Leslie", 
  last_name: "Nielsen", 
  hourly_rate: 70
)

@store2.employees.create(
  first_name: "Mike",
  last_name: "Myers", 
  hourly_rate: 50
)
pp @store2.employees
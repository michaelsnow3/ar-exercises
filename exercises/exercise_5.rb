require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# all stores annual revenue sum
@annual_revenue_sum = Store.sum(:annual_revenue)
puts @annual_revenue_sum

# all stores annual revenue average
@annual_revenue_avg = Store.average(:annual_revenue)
puts @annual_revenue_avg

# number of stores generating annual revenue > 1M
@number_of_stores = Store.where("annual_revenue >= 1000000").count
puts @number_of_stores
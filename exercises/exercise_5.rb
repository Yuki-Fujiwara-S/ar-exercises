require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

p "Total Revenue: " + Store.sum("annual_revenue").to_f.to_s
p "Avg annual Revenue: " + Store.average("annual_revenue").to_s

p "Number of stores with annual revenue above 1000000: " + Store.where("annual_revenue > ?", 1000000).count.to_s 
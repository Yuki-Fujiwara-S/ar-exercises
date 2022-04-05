require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Yuki", last_name: "Fujiwara", hourly_rate: 80)

@store2.employees.create(first_name: "bukayo", last_name: "Smith", hourly_rate: 260)
@store2.employees.create(first_name: "Saka", last_name: "Rowe", hourly_rate: 280)
@store2.employees.create(first_name: "Mikel", last_name: "Arteta", hourly_rate: 81110)
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

@store1.employees.create(first_name: "Bob", last_name: "Bob", hourly_rate: 50)
@store1.employees.create(first_name: "Joe", last_name: "Smith", hourly_rate: 55)

@store2.employees.create(first_name: "Hello", last_name: "World", hourly_rate: 65)
@store2.employees.create(first_name: "Jane", last_name: "Sanders", hourly_rate: 70)

@store1.employees.each do |employee|
  puts "First Name: #{employee.first_name}, Last Name: #{employee.last_name}."
end
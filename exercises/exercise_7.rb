require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Enter a store name:"
inputted_store = $stdin.gets.chomp
puts "Enter the annual revenue:"
inputted_revenue= $stdin.gets.chomp
puts "Does this store have mens apparel? (true or false):"
inputted_mens_apparel = $stdin.gets.chomp
puts "Does this store have womens apparel? (true or false):"
inputted_womens_apparel = $stdin.gets.chomp
new_store = Store.create(name: inputted_store, annual_revenue: inputted_revenue, mens_apparel: inputted_mens_apparel, womens_apparel: inputted_womens_apparel)

if new_store.save
  puts "New store saved successfully!"
else
  puts "New store couldn't be saved. Errors:"
  new_store.errors.each do |error|
    puts error.full_message
  end
end
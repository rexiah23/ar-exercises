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
print "whats the name of the store?"
answer = gets.chomp
@new_store = Store.create(name: answer)
Rails.logger.info(@new_store.errors.inspect)
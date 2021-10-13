require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store| 
  print store.name 
  print store.annual_revenue
end 

@womens_stores_less_than_1m_revenue = Store.where('womens_apparel = ? and annual_revenue < ?', true, 1000000)

puts @womens_stores_less_than_1m_revenue.to_a
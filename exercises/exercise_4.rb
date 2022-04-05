require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true).order(created_at: :desc)
@womens_stores = Store.where(womens_apparel: true).order(created_at: :desc)

# puts @mens_stores
# puts @mens_stores[0].name

@mens_stores.each do |store|
  p "Name: " + store.name + ". Annual revenue: " + store.annual_revenue.to_s
end

# puts @womens_stores
@womens_stores.each do |store|
  if store.annual_revenue < 1000000
    p "Store Name: " + store.name + ". Annual Revenue: " + store.annual_revenue.to_s
  end
end
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
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, :mens_apparel, :womens_apparel, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true }


end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200, only_integer: true }
end

print 'Type name for new user > '
answer = gets.chomp.to_s

new_store = Store.create(name: answer)
p "Is store valid? " + new_store.valid?.to_s.upcase

p "annual_revenue errors: " + new_store.errors[:annual_revenue].to_s
p "mens_apparel / womens_apparel errors: " + new_store.errors[:mens_apparel].to_s
require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

ann = Customer.new("Ann")
hillary = Customer.new("Hillary")
rob = Customer.new("Rob")
chase = Bank.new("Chase")
co = Bank.new("Capital One")
cc1 = CreditCard.new("QuickSilver", ann, co, 100)
cc2 = CreditCard.new("Sapphire", ann, chase, 1000)
cc3 = CreditCard.new("Venture", hillary, co, 2000)
cc4 = CreditCard.new("Amex", rob, chase, 10000)


binding.pry
# Bank.get_all_names
# boa.get_single_name
0

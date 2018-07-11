require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

ann = Customer.new("Ann")
rob = Customer.new("Rob")
c1 = Bank.new("Capital One")
boa = Bank.new("Bank of America")
c1.acquire_customer(ann, 100)
c1.acquire_customer(rob, 5000)
boa.acquire_customer(rob, 4000)
credit_card = CreditCard.new(ann, boa, 20)

binding.pry
0

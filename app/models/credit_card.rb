class CreditCard
  attr_accessor :customer, :bank, :limit
  @@all = []

  def initialize(customer, bank, limit)
    @customer = customer
    @bank = bank
    @limit = limit
    @@all << self
  end

  def self.all
    @@all
  end
end

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

  def self.find_limit(limit)
    self.all.find{ |credit_card|
      credit_card.limit == limit
    }
  end
end

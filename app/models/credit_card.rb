class CreditCard

  attr_accessor :customer, :bank, :limit
  attr_reader :name
  @@all = []

  def initialize(name, customer, bank, limit)
    @name = name
    @customer = customer
    @bank = bank
    @limit = limit
    @@all << self
  end

  def self.all
    @@all
  end


end

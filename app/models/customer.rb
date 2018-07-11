class Customer
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def credit_cards
    CreditCard.all.select { |credit_card|
      credit_card.customer == self
    }
  end

  def banks
    self.credit_cards.map { |credit_card|
      credit_card.bank
    }
  end

end

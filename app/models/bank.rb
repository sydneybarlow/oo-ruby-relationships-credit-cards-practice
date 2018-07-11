class Bank
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def acquire_customer(customer, limit)
    CreditCard.new(customer, self, limit)
  end

  def average_limit
    sum = 0
    count = 0
    CreditCard.all.each{ |credit_card|
      if(credit_card.bank == self)
        sum = sum + credit_card.limit
        count = count + 1
      end
    }
    sum/count
  end

  def self.highest_limit
    highest = 0
    CreditCard.all.each{ |credit_card|
      if credit_card.limit > highest
        highest = credit_card.limit
      end
    }
    highest
  end
  
end

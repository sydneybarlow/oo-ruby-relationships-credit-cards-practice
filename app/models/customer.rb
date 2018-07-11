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

    #if you ever need to access a class method from a different class
    def self.get_highest_limit
      Bank.highest_limit
    end

end

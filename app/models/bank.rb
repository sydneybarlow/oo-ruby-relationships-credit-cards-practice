require 'pry'

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

  # def self.get_all_names
  #   binding.pry
  #   self #refers to the class inside a class method
  #   @@all.map { |bank| bank.name}
  #   Bank.all.map { |bank| bank.name }
  #   self.all.map { |bank| bank.name }
  # end
  #
  # def get_single_name
  #   binding.pry
  #   self #refers to instance inside an instance method
  #   self.name
  # end

  #instance method; called off an isntance, returns average
  def average_limit

    #filter the CreditCard.all array to onlu only where bank is capital one
    limits = CreditCard.all.select do |cc|
      cc.bank == self
    end
    sum = 0

    #summing up all limits for said bank
    limits.each { |cc|
      sum+=cc.limit
    }

    #returning the average limit for said bank
    sum/limits.size
  end

  #class method
  def self.highest_limit
    CreditCard.all.map(&:limit).max

    #or you can do
    CreditCard.all.map{|x| x.limit}.max

    #or you can do
    CreditCard.all.map do |x| x.limit end .max
  end


end

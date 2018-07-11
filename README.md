# Object Relations Assessment

A `Customer` has many `Bank`s through `CreditCard`s and a `Bank` has many `Customer`s through `CreditCard`s. A `CreditCard` belongs to one `Customer` and one `Bank` and has a credit limit. In other words, although many different customers can have a `CreditCard` with the same `Bank`, the `Bank` might given them different credit limits. For example:
+ Jonny has a credit card with Capital One that has a credit limit of 5000.
+ Jonny also has a credit card with Chase that has a credit limit of 4000.
+ Ann has a credit card wit Capital One that has a credit limit of 100.

## Topics

- Classes vs Instances
- Variable Scope ( Class, Instance, Local )
- Object Relationships
- Arrays and Array Methods
- Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

## Deliverables

Implement all of the methods described below

### `Customer`

+ `Customer.new`
  + Customer should be initialized with a single string representing his/her name
+ `Customer.all`
  + returns all of the customers
+ `Customer#credit_cards`
  + this method should return an array of `CreditCard` instances associated with this instance of `Customer`.
+ `Customer#banks`
  + this method should return an array of `Bank` instances associated with this instance of `Customer`.

### `CreditCard`

+ `CreditCard.new`
  + CreditCard should be initialized with a string value for name, and a numeric value for limit. It should also be initialized with an instance of `Bank` and an instance of `Customer`.
+ `CreditCard.all`
  + returns an array of all `CreditCard`s
+ `CreditCard#customer`
  + returns the customer associated with this `CreditCard`
+ `CreditCard#bank`
  + returns the bank associated with this `CreditCard`
+ `CreditCard#limit`
  + returns the credit limit for this `CreditCard`
+ `CreditCard.credit_cards(limit)`
  + this method should return the first `CreditCard` instance from the CreditCard.all array where the limit of that `CreditCard` matches the limit passed into this method 

### `Bank`
+ `Bank.new`
  + Bank should be initialized with a string value for its name
+ `Bank.all`
  + returns an array of all `Bank`s
+ `Bank#acquire_customer(customer, limit)`
  + this method create a new instance of `CreditCard` associated with this instance of `Bank` and the passed in instance of `Customer` and limit
+ `Bank#average_limit`
  + returns the average of limit for all credit cards associated with the Bank
+ `Bank.highest_limit`
  + returns the instance of `Customer` that has the highest limit across all banks

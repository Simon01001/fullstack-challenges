class Order
  attr_accessor :id
  attr_reader :meal, :employee, :customer

  def initialize(attributes = {})
    @id = attributes[:id]
    @customer = attributes[:customer]
    @meal = attributes[:meal]
    @employee = attributes[:employee]
    @delivered = attributes[:delivered]
  end

  def delivered?
    @delivered
  end

  def deliver!
    @delivered = true
  end
end

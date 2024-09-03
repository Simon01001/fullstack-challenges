class Employee
  attr_accessor :id
  attr_reader :username, :password, :role

  def initialize(arguments = {})
    @id = arguments[:id]
    @username = arguments[:username]
    @password = arguments[:password]
    @role = arguments[:role]
  end

  def manager?
    @role == 'manager'
  end
end

employee = Employee.new(id: 1, username: "paul", password: "secret", role: "rider")
p employee

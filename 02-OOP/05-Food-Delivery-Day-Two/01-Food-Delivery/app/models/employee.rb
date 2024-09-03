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
    if arguments[:role] == "manager"
      return true
    else
      return false
    end
    @role == manager
  end

  def rider?
    if arguments[:role] == "rider"
      return true
    else
      return false
    end
    @role == rider
  end
end

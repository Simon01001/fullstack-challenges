require_relative '../views/sessions_view'
require_relative '../models/employee'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @sessions_view = SessionsView.new
  end

  def login
    username = @sessions_view.ask_for("username")
    password = @sessions_view.ask_for("password")
    employee = @employee_repository.find_by_username(username)

    if employee && employee.password == password
      @sessions_view.success(username)
      employee
    else
      @sessions_view.wrong_credentials
      login
    end
  end
end

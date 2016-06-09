class Employee


  attr_accessor :emp_name, :email, :phone, :salary


  def initialize(employee)
    @emp_name = employee[:name]
    @email = employee[:email]
    @phone = employee[:phone]
    @salary = employee[:salary]
    puts "Welcome to the company, #{@emp_name}"
  end
end



# Create a new employee (given his/her name, email address, phone number, and salary).

class Employee


  attr_accessor :emp_name, :email, :phone, :salary


  def initialize(employee)
    @emp_name = employee[:name]
    @email = employee[:email]
    @phone = employee[:phone]
    @salary = employee[:salary].to_i
  end
end

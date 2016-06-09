class Department

attr_accessor :dept_name, :employee_list

 def initialize(input)
   @dept_name = input
   @employee_list = []
 end

 def add_employee(employee)
    @employee_list << employee
 end

 def salary_sum
   sum = 0
  @employee_list.each do |employee|
    sum+= employee.salary
  end
  return sum

 end


end

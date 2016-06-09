class Department

attr_accessor :dept_name, :employee_list

 def initialize(input)
   @dept_name = input
   @employee_list = []
   puts "Hooray! you've created the #{@dept_name} Department"
 end

 def add_employee(employee)
    @employee_list << employee
 end

end

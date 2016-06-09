require './employee'

class Department

attr_accessor :dept_name, :employee_list

 def initialize(input)
   @dept_name = input
   @employee_list = []
   @good_employees = []
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

 def department_bonus(bonus_amount)
   count = 0
   @employee_list.each do |goodguy|
     if goodguy.performance == true
       count +=1
     end
   end
   employee_bonus = (bonus_amount.to_i / count)

   @employee_list.each do |goodguy|
     if goodguy.performance == true
       goodguy.salary += employee_bonus
     end
   end
 end
end

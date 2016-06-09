require './department'
require './employee'
require 'minitest/autorun'

class CompanyTesting < MiniTest::Test

  def robert
    {name: "Robert Dinitro", email: "robzo@gmail.com", phone: "9768938", salary: "100000"}
  end
  def peter
    {name: "Peter Kaplan", email: "imakemorethanrobert@gmail.com", phone: "9768238", salary: "150000"}
  end


  def test_create_dept_get_name
    dept = Department.new("Accounting")
    assert_equal "Accounting" , dept.dept_name
  end

  def test_create_employee_get_name_and_salary
    employee = Employee.new(robert)
    assert_equal "Robert Dinitro", employee.emp_name
    assert_equal 100000, employee.salary
  end

  def test_add_employee_to_department
    firstguy = Employee.new(robert)
    dept = Department.new("Accounting")
    dept.add_employee(firstguy)
    assert_equal firstguy , dept.employee_list[0]
  end

  def test_get_total_dept_salary
    firstguy = Employee.new(robert)
    secondguy = Employee.new(peter)
    dept = Department.new("Accounting")
    dept.add_employee(firstguy)
    dept.add_employee(secondguy)
    assert_equal 250000, dept.salary_sum
  end





end

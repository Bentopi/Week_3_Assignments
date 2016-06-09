require './department'
require './employee'
require 'minitest/autorun'


class CompanyTest < MiniTest::Test


  def test_create_dept_get_name
    dept = Department.new("Accounting")
    assert_equal "Accounting" , dept.dept_name
  end

  def test_create_employee_get_name_and_salary
    robert = {name: "Robert", email: "robzo@gmail.com", phone: "9768938", salary: "100000"}
    employee = Employee.new(robert)
    assert_equal "Robert", employee.emp_name
    assert_equal "100000", employee.salary
  end

  def test_add_employee_to_department
    robert = {name: "Robert", email: "robzo@gmail.com", phone: "9768938", salary: "100000"}
    firstguy = Employee.new(robert)
    dept = Department.new("Accounting")
    dept.add_employee(firstguy)
    assert_equal firstguy , dept.employee_list[0]
  end
end

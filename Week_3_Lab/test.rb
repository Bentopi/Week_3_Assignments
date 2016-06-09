require './department'
require './employee'
require 'minitest/autorun'


class CompanyTest < MiniTest::Test


  def test_get_dept_name
    dept = Department.new("Accounting")
    assert_equal "Accounting" , dept.dept_name
  end

  def test_create_employee
    robert = {name: "Robert", email: "robzo@gmail.com", phone: "9768938", salary: "100000"}
    employee = Employee.new(robert)
    assert_equal "Robert", employee.emp_name
  end

end

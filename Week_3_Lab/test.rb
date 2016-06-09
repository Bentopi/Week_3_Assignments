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

  def test_add_review_to_employee
    firstguy = Employee.new(robert)
    firstguy.add_review("He's the best!")
    firstguy.add_review("I like Robert!")
    firstguy.add_review("Robert Sucks!")
    assert_equal 3 , firstguy.reviews.count
  end

  def test_employee_performance
    firstguy = Employee.new(robert)
    secondguy = Employee.new(peter)
    assert_equal false, firstguy.set_performance("Bad")
    assert_equal true, secondguy.set_performance("GOOD")
  end

  def test_give_employee_raise
    firstguy = Employee.new(robert)
    assert_equal 102000, firstguy.give_raise(2000)
  end

  def test_department_bonus
    firstguy = Employee.new(robert)
    firstguy.set_performance("good")
    secondguy = Employee.new(peter)
    secondguy.set_performance("good")
    dept = Department.new("Accounting")
    dept.add_employee(firstguy)
    dept.add_employee(secondguy)
    dept.department_bonus(50000)
    assert_equal 175000 , secondguy.salary
    assert_equal 125000 , firstguy.salary
  end

end

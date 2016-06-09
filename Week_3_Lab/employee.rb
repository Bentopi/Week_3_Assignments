class Employee

  attr_accessor :emp_name, :email, :phone, :salary, :reviews, :performance

  def initialize(employee)
    @emp_name = employee[:name]
    @email = employee[:email]
    @phone = employee[:phone]
    @salary = employee[:salary].to_i
    @reviews = []
  end

  def add_review(review)
    @reviews << review
  end

  def set_performance(value)
    if value.downcase == "good"
      @performance = true
    else
      @performance = false
    end
    return @performance
  end

  def give_raise(amount)
    @salary += amount.to_i
    return @salary
  end

end

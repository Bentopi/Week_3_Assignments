class Department

attr_accessor :dept_name

 def initialize(input)
   @dept_name = input
   puts "Hooray! you've created the #{@dept_name} Department"
end

end

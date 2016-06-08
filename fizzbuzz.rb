 count = 1
100.times do |n|
    n = count
  case
  when n % 3 == 0 && n % 5 == 0
    print "FizzBuzz"
  when n % 5 == 0
    print "Buzz"
  when n % 3 == 0
    print "Fizz"
  else
    print count
  end
  count +=1
end

def bouncer
    age = 0

    while age != "quit"
      puts ""
      puts "So, how old are you?, (type quit to exit)"
      age = gets.chomp

    answers = {
      none: "You aren't really allowed to do absolutely anything.",
      smoke:  "You can smoke, choose what to smoke wisely, if anything.",
      vote: "You can vote, but I wouldn't ask your parents for advice.",
      drink: "You can drink, just don't drive after.",
      rent: "You have reached the highest tier, you may now rent a car, remember to fill it up before returning."
    }
    age_number = age.to_i
    result = []
      case
      when age == "quit"
        puts "Goodbye!"
      when age_number >= 25
          result = answers.values_at(:rent, :vote, :drink, :smoke)
        when age_number >= 21
          result = answers.values_at(:vote, :drink, :smoke)
        when age_number >= 18
          result = answers.values_at(:vote)
        when age_number < 18
          result = answers.values_at(:none)
      end
      puts result
  end
end

bouncer
puts ""

class Game
attr_accessor :result, :player_choice, :computer_choice


    def play
      puts "Time to play some Rock, Paper and Scissors!"
      puts "please choose your weapon: Rock (r), Paper (p) or Scisorrs (s)"
      @player_choice = gets.chomp.downcase
      @computer_choice = ["r", "p", "s"].sample
      @result = ""
        case
          when @player_choice == @computer_choice
            @result = "It's a tie! Try again!"
            `say "wow, I guess it's a tie"`
          when @player_choice == "r" && @computer_choice == "s"
            @result = "A winner is you!"
            `say "a winner is you!"`
          when @player_choice == "r" && @computer_choice == "p"
            @result = "You lose!"
            `say "you are a loser!"`
          when @player_choice == "p" && @computer_choice == "r"
            @result = "A winner is you!"
            `say "a winner is you!"`
          when @player_choice == "p" && @computer_choice == "s"
            @result = "You lose!"
            `say "you are a loser!"`
          when @player_choice == "s" && @computer_choice == "p"
            @result = "A winner is you!"
            `say "a winner is you!"`
          when @player_choice == "s" && @computer_choice == "r"
            @result = "You lose!"
            `say "you are a loser!"`
          else
            @result = "That's not an option!"
            `say "You're ruining the game, man"`
        end
      return @result
    end
end

new_game = Game.new

new_game.play
puts ""
puts "The result is: #{new_game.result}"
puts "The computer chose: #{new_game.computer_choice}"
puts "You chose: #{new_game.player_choice}"
puts ""

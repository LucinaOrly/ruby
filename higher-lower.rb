#!usr/bin/env ruby

DEFAULT_RANGE = 100
PROMPT = ">"

def play(range = DEFAULT_RANGE)
    winningNumber = rand(range)
    
    print "Choose a number from [1, #{range}]\n#{PROMPT}"
    while user_input = gets.chomp.to_i
        if user_input == 0
           puts "Invalid input (must be a number)"
        elsif user_input < winningNumber
           puts "Higher"
        elsif user_input > winningNumber
           puts "Lower"
        else
           puts "Congratualations on guessing the number #{winningNumber}!!"
            return user_input
        end
        print PROMPT
    end
end
    
if __FILE__ == $0
    play
end
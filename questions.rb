#Questions class: will generate random math questions, check the asnwer, and handle
#user input/output. 
#state: two random numbers between 1-20 for addition problems, the correct answer
#methods: initialize: generate two random numbers and store their sum
  #ask_question: Outputs the question and takes user input
    #correct?: checks if the player's answer matches the correct answer


class Question
  attr_accessor :number1, :number2, :answer

def initialize
  @number1 = rand(1..20)
  @number2 = rand(1..20)
  @sum = @number1 + @number2
end

def ask_question(player_name)
  puts "#{player_name}, what is #{@number1} + #{@number2}?"
  gets.chomp.to_i
end

def correct?(player_answer)
  player_answer == @sum
end

end 
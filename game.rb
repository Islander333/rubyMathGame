#Game class: will manage game loop and players turns
#state: will store two players, will store current players to track turns
#methods: initialize method to set up the two players
  #start: main game loop that continues until one player loses all their lives
  #switch_player: switch between player1 and player2 after each turn
  #game_over: check if any player has lost and print the winner

class Game
  attr_accessor :current_player

def initialize
  @player1 = Player.new("Player 1")
  @player2 = Player.new("Player 2")
  @current_player = @player1
end

def start
  until game_over

    #generate new question
    question = Question.new
    player_answer = question.ask_question(@current_player.name)

    #check if answer is correct
    if question.correct?(player_answer)
      puts "Correct!"
    else
      puts "Incorrect! Yoy lose a life :("
      @current_player.lose_life
end

#show lives
puts "#{@player1.name} has #{@player1.lives} lives remaining."
puts "#{@player2.name} has #{@player2.lives} lives remaining."

#check if game is over every turn
break if game_over

#switch between players
switch_player
end

#announcing winner when the loop ends
announce_winner
end

#switch between players after turns
def switch_player
  @current_player = @current_player == @player1 ? @player2 : @player1
end

#end the game if someone is out of lives
def game_over
  @player1.lives == 0 || @player2.lives == 0
end

def announce_winner
  if @player1.lives == 0
    puts "#{@player2.name} wins with #{@player2.lives} lives remaining!"
  elsif @player2.lives == 0
    puts "#{@player1.name} wins with #{@player1.lives} lives remaining!"
  end
end


end

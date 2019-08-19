require "./classes/Question"
require "./classes/Player"


class Game

  #initialize 2 players, active players, current round, 
  def initialize
    
    @player_1 = Player.new("P1")
    @player_2 = Player.new("P2")
    @current_player = @player_1
    @round = 1

  end
  
  def new_game

    puts "Let's play!"
    run_game

  end

  def switch_player
    if (@current_player == @player_1)
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def game_over
    puts "#{@current_player.name} has run out of lives by somehow managing to get 3 basic arithmetic question wrong. If #{@current_player.name} is over the age of 10, this should really be seen as a warning sign for a potentially much larger problem"
  end

  def run_game
  # start the game (loop)
  while (@current_player.lives > 0)
    puts "#{@current_player.name} --- This question is for you!"

    # initialize a question
    question = Question.new

    # ask the question
    question.ask_question 

    # propmt the player for an answer
    answer = gets.chomp
    
    # check if provided answer is correct
    if !question.check_answer(answer.to_i)
      puts "nope....\n"
      @current_player.lose_a_life
    else 
      puts "yup!\n"
    end
    
    if (@current_player.lives == 0)
      game_over
    else
    puts "The score stants at\n#{@player_1.name}: #{@player_1.lives} / 3 lives remaining\n#{@player_2.name}: #{@player_2.lives} / 3 lives remaining\n"
    switch_player
    end
  end
end

end

#determine active player

    #initialize a question
    # ask the question
    #check the answer
      # if wrong subtract a life
      # check if player has > 0 lives
        # if 0 lose game
    
    # change active player
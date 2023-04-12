class TicTacToe
  attr_accessor :player1 , :player2
  def initialize()
    introduction()
  end

  def introduction()
    puts "Welcome tooo!!! TicTacToe"
    puts "To start, each player has to enter a name..."
    enter_names()
  end

  def enter_names()
    print "Player 1, enter your name: "
    self.player1 = gets.chomp
    print "Player 2, enter your name: "
    self.player2 = gets.chomp
    pregame()
  end

  def pregame()
    puts "#{self.player1} and #{self.player2}, let's start!!"
  end


end



game = TicTacToe.new()
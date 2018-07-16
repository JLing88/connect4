require './lib/board'
require './lib/player'

class Game

  def initialize
    @board = Board.new
    @current_player = Player.new("Jesse")
  end

  def welcome_message
    "Welcome to Connect 4"
  end

  def request_move
    "#{@current_player.name}, please select a column A-G: "
  end

  def accept_move
    gets.chomp.upcase
  end

end

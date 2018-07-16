require './lib/board'
require './lib/player'
require './lib/computer_player'

class Game

  attr_accessor :game_over,
                :player,
                :current_player

  def initialize
    @board = Board.new
    @player = Player.new
    @cpu = ComputerPlayer.new
    @game_over = false
    @current_player = @player
  end

  def welcome_message
    "Welcome to Connect 4"
  end

  def request_move
    "#{player.name}, please select a column A-G: "
  end

  def accept_move
    gets.chomp.upcase
  end

end

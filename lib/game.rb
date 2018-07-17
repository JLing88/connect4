require './lib/board'
require './lib/player'
require './lib/computer_player'

class Game

  attr_accessor :game_over,
                :current_player,
                :player,
                :cpu


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

  def change_current_player
    if @current_player == player
      @current_player = cpu
    else
      @current_player = player
    end
  end

  def play
    puts welcome_message
    @player.name = @player.get_name
    while @game_over == false
      puts @board.print_board
      print request_move
      player_move = accept_move
      @board.process_move(player_move, current_player)
      puts @board.print_board
      change_current_player
      puts "CPU's turn..."
      sleep(2)
      @board.process_move(@cpu.generate_column, current_player)
      change_current_player
    end
  end

  def validate_move(column)
    valid? = false
    while !valid?
      
    end
  end

end

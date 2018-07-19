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

  def game_win?
    win_horizontal? || win_vertical?
  end

  def play
    puts welcome_message
    @player.name = @player.get_name
    while @game_over == false
      puts @board.print_board
      print request_move
      player_move = accept_move
      while @board.valid_move?(player_move) == false
        print "Invalid move! Please try again: "
        player_move = accept_move
      end
      @board.process_move(player_move, current_player)
      puts @board.print_board
      change_current_player
      puts "CPU's turn..."
      sleep(2)
      cpu_move = @cpu.generate_column
      while @board.valid_move?(cpu_move) == false
        cpu_move = @cpu.generate_column
      end
      @board.process_move(cpu_move, current_player)
      change_current_player
    end
  end
end

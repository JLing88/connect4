require 'minitest/autorun'
require 'minitest/pride'
require './lib/board.rb'
require './lib/player.rb'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
    @player = Player.new
  end

  def test_it_exists
    expected = Board
    actual = @board

    assert_instance_of expected, actual
  end

  def test_the_board_prints
    expected = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    actual = @board.print_board

    assert_equal expected, actual
  end

  def test_current_slot_index
    expected = 6
    actual = @board.current_slot_index["A"]

    assert_equal expected, actual
    actual = @board.current_slot_index["G"]

    assert_equal expected, actual
  end

  def test_if_the_slot_is_valid
    expected = true
    actual = @board.valid_move?("A")

    assert_equal expected, actual

    @board.current_slot_index["A"] = 0
    expected = false
    actual = @board.valid_move?("A")

    assert_equal expected, actual
  end

  def test_it_can_process_a_move
    @board.process_move("A", @player)
    expected = "X"
    actual = @board.grid[6][0]
    assert_equal expected, actual

    @board.process_move("G", @player)
    expected = "X"
    actual = @board.grid[6][6]

    assert_equal expected, actual
  end

  def test_it_can_tell_a_horizontal_win
    @board.grid[1][0] = "O"
    @board.grid[2][0] = "O"
    @board.grid[3][0] = "O"
    @board.grid[4][0] = "O"

    transposed_grid = @board.grid.transpose
    require 'pry'; binding.pry
    expected = true
    actual = @board.win_horizontal?

    assert_equal expected, actual
  end
end

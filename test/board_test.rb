require 'minitest/autorun'
require 'minitest/pride'
require './lib/board.rb'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
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
    @board.process_move("A", @current_player)
    expected = "X"
    actual = @board.grid[6][0]
    assert_equal expected, actual

    @board.process_move("G", @current_player)
    expected = "X"
    actual = @board.grid[6][6]

    assert_equal expected, actual
  end
end

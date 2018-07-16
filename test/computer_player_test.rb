require 'minitest/autorun'
require 'minitest/pride'
require './lib/computer_player'

class ComputerPlayerTest < Minitest::Test
  def setup
    @cpu = ComputerPlayer.new
  end

  def test_it_exists
    assert_instance_of ComputerPlayer, @cpu
  end

  def test_generate_column_returns_a_string
    assert_equal String, @cpu.generate_column.class
  end
end

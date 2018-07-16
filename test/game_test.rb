require 'minitest/autorun'
require 'minitest/pride'
require './lib/game.rb'

class GameTest < Minitest::Test

  def setup
    @game = Game.new
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_welcome_message
    expected = "Welcome to Connect 4"
    actual = @game.welcome_message

    assert_equal expected, actual
  end

  def test_it_can_request_a_move
    expected = "Jesse, please select a column A-G: "
    actual = @game.request_move

    assert_equal expected, actual
  end

  def test_it_can_change_players
    

  end

end

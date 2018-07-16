require 'minitest/autorun'
require 'minitest/pride'
require './lib/player.rb'

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new('Jesse')
  end

  def test_it_exists
    assert_instance_of Player, @player
  end

  def test_it_has_a_name
    expected = 'Jesse'
    actual = @player.name

    assert_equal expected, actual
  end

  def test_its_name_can_change
    expected = "Jesse"
    actual = @player.name

    assert_equal expected, actual

    @player.name = "Jim"
    expected = "Jim"
    actual = @player.name

    assert_equal expected, actual

  end
end

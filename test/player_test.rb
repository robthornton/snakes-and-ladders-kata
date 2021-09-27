# frozen_string_literal: true

require 'test_helper'

class PlayerTest < TestCase
  def test_player_has_location
    expected = 0
    player = Player.new(name: "", location: expected)
    assert_equal(expected, player.location, "Location should be: #{expected}")
  end

  def test_player_has_name
    expected = "Player 1"
    player = Player.new(name: expected, location: 0)
    assert_equal(expected, player.name, "Name should be: #{expected}")
  end
end

# frozen_string_literal: true

require 'test_helper'

class SnakesLaddersTest < TestCase
  def test_new_game_has_player_one_location_zero
    game = SnakesLadders.new
    player = game.players[0]
    assert_equal(0, player.location)
  end

  def test_new_game_has_player_one_correct_name
    game = SnakesLadders.new
    player = game.players[0]
    assert_equal('Player 1', player.name)
  end

  def test_new_game_has_player_two_location_zero
    game = SnakesLadders.new
    player = game.players[1]
    assert_equal(0, player.location)
  end

  def test_new_game_has_player_two_correct_name
    game = SnakesLadders.new
    player = game.players[1]
    assert_equal('Player 2', player.name)
  end

  def test_current_player_starts_with_player1
    game = SnakesLadders.new
    assert_equal(game.players[0], game.current_player)
  end

  def test_current_player_moves_to_location
    game = SnakesLadders.new
    game.play(die1: 1, die2: 2)
    expected = 3
    assert_equal(expected, game.players[0].location)
  end

  def test_current_player_switches_to_player2_after_play
    game = SnakesLadders.new
    game.play(die1: 1, die2: 2)
    assert_equal(game.players[1], game.current_player)
  end

  def test_full_game
    game = SnakesLadders.new
    assert_equal('Player 1 is on square 38', game.play(die1: 1, die2: 1))
    assert_equal('Player 1 is on square 44', game.play(die1: 1, die2: 5))
    assert_equal('Player 2 is on square 31', game.play(die1: 6, die2: 2))
    assert_equal('Player 1 is on square 25', game.play(die1: 1, die2: 1))
  end
end
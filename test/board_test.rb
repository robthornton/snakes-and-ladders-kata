# frozen_string_literal: true

require 'test_helper'

class BoardTest < TestCase
  def test_board_size
    expected = 100
    board = Board.new(size: expected, transitions: [])
    assert_equal(expected, board.size)
  end

  def test_moving_location_without_transition
    board = Board.new(size: 1, transitions: [])
    expected = 0
    assert_equal(expected, board.move(location: 0), "Move should return location of: #{expected}")
  end

  def test_moving_location_with_matching_transition
    transitions = [Transition.new(from: 0, to: 1)]
    board = Board.new(size: 1, transitions: transitions)
    expected = 1
    assert_equal(expected, board.move(location: 0), "Move should return location of: #{expected}")
  end

  def test_moving_location_without_matching_transition
    transitions = [Transition.new(from: 1, to: 2)]
    board = Board.new(size: 1, transitions: transitions)
    expected = 0
    assert_equal(expected, board.move(location: 0), "Move should return location of: #{expected}")
  end

  def test_moving_location_past_size_bounces_back
    board = Board.new(size: 3, transitions: [])
    expected = 1
    assert_equal(expected, board.move(location: 5), "Move should return location of: #{expected}")
  end
end

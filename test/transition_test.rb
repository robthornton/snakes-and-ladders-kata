# frozen_string_literal: true

require 'test_helper'

class TransitionTest < TestCase
  def test_location_matches_from
    transition = Transition.new(from: 0, to: 1)
    assert_equal(true, transition.match?(location: 0), 'Location matches transition')
  end

  def test_transition_to_is_expected
    expected = 1
    transition = Transition.new(from: 0, to: expected)
    assert_equal(expected, transition.to, "Transitions to matches should be: #{expected}")
  end
end
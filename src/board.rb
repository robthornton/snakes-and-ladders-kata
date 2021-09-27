# frozen_string_literal: true

class Board
  attr_reader :size

  def move(location:)
    transition = transitions.find { |transition| transition.match?(location: location) }

    return transition.to if transition
    return location if location < size

    size - (location - size)
  end

  private

  attr_reader :transitions

  def initialize(size:, transitions:)
    @size = size
    @transitions = transitions
  end
end
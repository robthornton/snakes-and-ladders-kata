# frozen_string_literal: true

class Player
  attr_reader :location, :name

  def initialize(location:, name:)
    @location = location
    @name = name
  end
end

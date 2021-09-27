# frozen_string_literal: true

class Player
  attr_reader :location, :name

  def move(location:)
    self.class.new(name: name, location: location)
  end

  private

  def initialize(location:, name:)
    @location = location
    @name = name
  end
end

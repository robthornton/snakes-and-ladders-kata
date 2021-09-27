# frozen_string_literal: true

require 'board'
require 'player'
require 'transition'

class SnakesLadders
  attr_reader :current_player, :players

  def play(die1:, die2:)
    location = current_player.location + die1 + die2
    move_current_player(location: board.move(location: location))

    message = "#{current_player.name} is on square #{current_player.location}"

    @player_index = next_player(die1: die1, die2: die2)

    message
  end

  def current_player
    players[@player_index]
  end

  private

  attr_reader :board

  def initialize
    @board = Board.new(size: 100, transitions: transitions)
    @player_index = 0
    @players = [
      Player.new(name: 'Player 1', location: 0),
      Player.new(name: 'Player 2', location: 0),
    ]
  end

  def transitions
    [
      Transition.new(from: 2, to: 38),
      Transition.new(from: 7, to: 14),
      Transition.new(from: 8, to: 31),
      Transition.new(from: 16, to: 6),
      Transition.new(from: 21, to: 42),
      Transition.new(from: 28, to: 84),
      Transition.new(from: 36, to: 44),
      Transition.new(from: 46, to: 25),
      Transition.new(from: 49, to: 11),
      Transition.new(from: 51, to: 67),
      Transition.new(from: 62, to: 19),
      Transition.new(from: 64, to: 60),
      Transition.new(from: 71, to: 91),
      Transition.new(from: 74, to: 53),
      Transition.new(from: 78, to: 98),
      Transition.new(from: 87, to: 94),
      Transition.new(from: 89, to: 68),
      Transition.new(from: 92, to: 88),
      Transition.new(from: 95, to: 75),
      Transition.new(from: 99, to: 80),
    ]
  end

  def move_current_player(location:)
    players[@player_index] = current_player.move(location: location)
  end

  def next_player(die1:, die2:)
    return @player_index if die1 == die2
    return @player_index + 1 if (@player_index + 1) < players.count

    0
  end
end
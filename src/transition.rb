# frozen_string_literal: true

class Transition
  attr_reader :to

  def match?(location:)
    from == location
  end

  private

  attr_reader :from

  def initialize(from:, to:)
    @from = from
    @to = to
  end
end
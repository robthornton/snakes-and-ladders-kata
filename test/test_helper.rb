# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'

REPORTERS_OPTIONS = { color: true }
Minitest::Reporters.use!(Minitest::Reporters::DefaultReporter.new(REPORTERS_OPTIONS))

require 'game'

class TestCase < Minitest::Test; end

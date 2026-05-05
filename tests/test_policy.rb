require 'minitest/autorun'
require 'policy'

class PolicyTest < Minitest::Test
  def test_fixture_decisions
    signal_case_1 = AtlasParseLogScope::Signal.new(demand: 86, capacity: 70, latency: 21, risk: 24, weight: 12)
    assert_equal 62, AtlasParseLogScope.score(signal_case_1)
    assert_equal 'review', AtlasParseLogScope.classify(signal_case_1)
    signal_case_2 = AtlasParseLogScope::Signal.new(demand: 59, capacity: 71, latency: 15, risk: 15, weight: 7)
    assert_equal 66, AtlasParseLogScope.score(signal_case_2)
    assert_equal 'review', AtlasParseLogScope.classify(signal_case_2)
    signal_case_3 = AtlasParseLogScope::Signal.new(demand: 86, capacity: 96, latency: 25, risk: 19, weight: 6)
    assert_equal 71, AtlasParseLogScope.score(signal_case_3)
    assert_equal 'review', AtlasParseLogScope.classify(signal_case_3)
  end
end

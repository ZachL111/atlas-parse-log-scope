require 'minitest/autorun'
require 'domain_review'

class DomainReviewTest < Minitest::Test
  def test_domain_lane
    item = AtlasParseLogScope::DomainReview.new(signal: 46, slack: 36, drag: 30, confidence: 82)
    assert_equal 120, AtlasParseLogScope.domain_review_score(item)
    assert_equal "watch", AtlasParseLogScope.domain_review_lane(item)
  end
end

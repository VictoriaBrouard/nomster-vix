require 'test_helper'

class CommentTest < ActiveSupport::TestCase

	test "humanized_rating" do
		comment = FactoryGirl.create(:comment)
		expected = "two stars"
		actual = comment.humanized_rating
		assert_equal expected, actual
	end
 



end

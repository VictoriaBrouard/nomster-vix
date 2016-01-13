require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment_creation" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place)
  	assert_difference 'Comment.count' do
  		comment = FactoryGirl.create(:comment)
  	end

  assert_redirected_to places_path

  assert_equal 1, user.comments.count

	end
end

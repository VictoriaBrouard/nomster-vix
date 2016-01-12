require 'test_helper'

class CommentTest < ActiveSupport::TestCase

	test "humanized_rating" do
		comment = FactoryGirl.create(:comment)
		get :show, id: place.id
	end
 



end

require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "comment_creation" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	place = FactoryGirl.create(:place)
  		post :create, :place_id => place.id, :comment => {
  			:message => "Really great meal", 
  			:rating => "2_stars", 
  		}
  	

  	end

  assert_redirected_to places_path(place)

  assert_difference 1, place.comments.count

end

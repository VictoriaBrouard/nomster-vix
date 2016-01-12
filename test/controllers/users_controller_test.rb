require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	include Devise::TestHelpers

	test "user_dashboard"
	@request.env["devise.mapping"] = Devise.mappings[:user]
		user = sign _in FactoryGirl.create(:user)
		get :show, :id => user.id
		assert_response :success
  end
end

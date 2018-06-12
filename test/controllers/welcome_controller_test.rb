require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    welcome_index_url = '/'
    get welcome_index_url
    assert_response :success
  end

  test "Click 'Enter' or 'Join Now' should go to /docs when already signed in" do
    # user = User.first
    # user[:password] = 'q1w2e3'
    # post user_session_path, {email: 'user1@example.com', password: 'q1w2e3', remember_me: 0}
    # response.body
  end

end

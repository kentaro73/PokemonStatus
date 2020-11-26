require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statuses_index_url
    assert_response :success
  end

  test "should get new" do
    get statuses_new_url
    assert_response :success
  end

end

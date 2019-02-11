require 'test_helper'

class GirlsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get girls_index_url
    assert_response :success
  end

  test "should get show" do
    get girls_show_url
    assert_response :success
  end

end

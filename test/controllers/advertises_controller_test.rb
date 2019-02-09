require 'test_helper'

class AdvertisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advertises_index_url
    assert_response :success
  end

end

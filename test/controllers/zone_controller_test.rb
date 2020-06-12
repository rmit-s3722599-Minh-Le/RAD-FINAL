require 'test_helper'

class ZoneControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get zone_new_url
    assert_response :success
  end

end

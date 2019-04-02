require 'test_helper'

class WatchistItemControllerTest < ActionDispatch::IntegrationTest
  test "should get api/v1/watchlistItem" do
    get watchist_item_api/v1/watchlistItem_url
    assert_response :success
  end

end

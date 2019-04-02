require 'test_helper'

class WatchListItemControllerTest < ActionDispatch::IntegrationTest
  test "should get api/v1/watchlistItem" do
    get WatchList_item_api/v1/watchlistItem_url
    assert_response :success
  end

end

require 'test_helper'

class InventoryControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get inventory_upload_url
    assert_response :success
  end

end

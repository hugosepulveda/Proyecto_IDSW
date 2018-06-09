require 'test_helper'

class BodeguerosCentralControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bodegueros_central_index_url
    assert_response :success
  end

end

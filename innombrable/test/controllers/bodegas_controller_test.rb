require 'test_helper'

class BodegasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bodegas_show_url
    assert_response :success
  end

end

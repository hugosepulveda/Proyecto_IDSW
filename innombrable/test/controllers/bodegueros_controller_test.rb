require 'test_helper'

class BodeguerosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bodegueros_new_url
    assert_response :success
  end

end

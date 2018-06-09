require 'test_helper'

class OrdenesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ordenes_create_url
    assert_response :success
  end

end

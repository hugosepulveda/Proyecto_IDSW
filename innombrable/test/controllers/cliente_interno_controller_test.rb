require 'test_helper'

class ClienteInternoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cliente_interno_index_url
    assert_response :success
  end

end

require 'test_helper'

class ClientesInternosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clientes_internos_new_url
    assert_response :success
  end

end

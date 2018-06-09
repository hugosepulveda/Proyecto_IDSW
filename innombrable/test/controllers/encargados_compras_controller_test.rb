require 'test_helper'

class EncargadosComprasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get encargados_compras_index_url
    assert_response :success
  end

end

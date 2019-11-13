require 'test_helper'

class JerseysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jerseys_index_url
    assert_response :success
  end

  test "should get show" do
    get jerseys_show_url
    assert_response :success
  end

end

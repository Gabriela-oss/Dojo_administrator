require "test_helper"

class JudoTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get judo_test_index_url
    assert_response :success
  end

  test "should get show" do
    get judo_test_show_url
    assert_response :success
  end
end

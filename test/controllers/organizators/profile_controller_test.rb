require 'test_helper'

class Organizators::ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organizators_profile_index_url
    assert_response :success
  end

  test "should get show" do
    get organizators_profile_show_url
    assert_response :success
  end

  test "should get edit" do
    get organizators_profile_edit_url
    assert_response :success
  end

end

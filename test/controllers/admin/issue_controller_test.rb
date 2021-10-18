require 'test_helper'

class Admin::IssueControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_issue_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_issue_new_url
    assert_response :success
  end

end

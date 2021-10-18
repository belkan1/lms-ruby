require 'test_helper'

class Reader::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reader_dashboard_index_url
    assert_response :success
  end

end

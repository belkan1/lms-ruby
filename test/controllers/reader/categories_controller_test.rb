require 'test_helper'

class Reader::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reader_categories_index_url
    assert_response :success
  end

end
